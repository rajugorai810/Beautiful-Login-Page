import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
   Key? key,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Image(image: AssetImage(welcomeScreenImage), height: size.height*0.2,),
        Text(tLoginTitle, style: Theme.of(context).textTheme.headline2,),
        Text(tLoginSubtitle, style: Theme.of(context).textTheme.bodyText1,),
      ],
    );
  }
}
