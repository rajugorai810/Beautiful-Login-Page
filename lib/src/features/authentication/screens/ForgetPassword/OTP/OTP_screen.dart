import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage/src/constants/sizes.dart';
import 'package:loginpage/src/constants/text_strings.dart';
import 'package:loginpage/src/features/authentication/controllers/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OTPController());
    var otp;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tOTPtitle, style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 80,
            ),),
            Text(tOTPsubtitle.toUpperCase(), style: Theme.of(context).textTheme.headline2, ),
            const SizedBox(height: 40,),
            Text(tOTPMessege + "support@raju.com", textAlign: TextAlign.center,),
            const SizedBox(height: 20,),
            OtpTextField(
                numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code){
                  // print("OTP is => $code");
                otp = code;
                OTPController.instance.verifyOTP(otp);
              },

            ),
            const SizedBox(height: 20,),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  OTPController.instance.verifyOTP(otp);
                }, child: Text("Next"))),
          ],
        ),
      ),
    );
  }
}
