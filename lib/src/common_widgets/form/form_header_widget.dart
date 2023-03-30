import 'package:flutter/material.dart';

// import '../../../../constants/image_strings.dart';
// import '../../../../constants/text_strings.dart';
import '../../constants/image_strings.dart';
import '../../constants/text_strings.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
  required this.image,
    required this.title,
    required this.subtitle,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.heightBetween,
  }) : super(key: key);

  final String image, title, subtitle;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [

        Image(image: AssetImage(image), height: size.height*0.2,),
        SizedBox(height: heightBetween,),
        Text(title, style: Theme.of(context).textTheme.headline2,),
        Text(subtitle, textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyText1,),
      ],
    );
  }
}
