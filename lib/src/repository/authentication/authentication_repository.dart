import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:loginpage/src/features/authentication/screens/DashBoard/widgets/dashboard.dart';
import 'package:loginpage/src/features/authentication/screens/welcome/welcome.dart';
import 'package:loginpage/src/repository/authentication/exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();


  // Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;
  var verificationId = ''.obs;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser!.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null ? Get.to(() => WelcomeScreen()) : Get.offAll(() =>
        DashBoard());
  }

  Future<void> phoneAuthentication(String phoneNo) async{
   await _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
        verificationCompleted: (credential) async{
        await _auth.signInWithCredential(credential);
        },

        codeSent: (verificationId, resendToekn){
          this.verificationId.value= verificationId;
        },
        codeAutoRetrievalTimeout: (veificationId){
        this.verificationId.value = verificationId as String;
        },
        verificationFailed: (e){
        if(e.code == 'invalid-phone-number'){
          Get.snackbar("Error", 'The provided phone number is not valid');
        }
        else{
          Get.snackbar("Error", "Something went wrong. Try again");
        }
        },
    );
  }

  Future<bool> verifyOTP(String otp) async{
   var credentials =  await  _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationId.value, smsCode: otp));
   return credentials.user !=null? true : false;
}

  Future<String?> createUserWithWmailAndPassword(String email,
      String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {

    } catch (_) {}
  }

  Future<String?> loginWithEmailAndPassword(String email,
      String password) async {
    try {
      await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null ? Get.offAll(() => const DashBoard()) : Get
          .to(() => WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.messege}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.messege}');
      throw ex;
    }
  }

  Future<void> logout() async => await _auth.signOut();

}




