import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get.dart';
import 'package:loginpage/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import '../../constants/image_strings.dart';
import 'splash_screen_controller.dart';

class tFadeinAnimation extends StatelessWidget {
   tFadeinAnimation({
    Key? key,

    required this.durationInMs,
      this.animate,
     required this.child,
  }) : super(key: key);

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () =>
          AnimatedPositioned(
              duration:  Duration(milliseconds: durationInMs),
              top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
              left: controller.animate.value ? animate!.leftAfter : animate!.topBefore,
              bottom: controller.animate.value ? animate!.bottomAfter : animate!.bottomBefore,
             right: controller.animate.value ? animate!.rightAfter : animate!.rightBefore,

              child: AnimatedOpacity(
                duration: Duration(milliseconds: durationInMs),
              opacity: controller.animate.value ? 1 : 0,
              child: child,
              )),
    );
  }
}
