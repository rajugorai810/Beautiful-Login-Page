
import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';

class DashBoardBanners extends StatelessWidget {
  const DashBoardBanners({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:  CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration:  BoxDecoration(borderRadius: BorderRadius.circular(10), color:  tCardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment : CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(child: Image(image: AssetImage(tDashBoardmage))),
                    //Flexible(child: Image(image: AssetImage(tDashBoardmage))),
                  ],
                ),
                const SizedBox(height: 25,),
                Text(tDashBoardBannerTitle1, style: txtTheme.headline6,maxLines: 2, overflow: TextOverflow.ellipsis,),
                Text(tDashBoardBannersubtitle, style: txtTheme.bodyText1,maxLines: 1, overflow: TextOverflow.ellipsis,),
              ],
            ),
          ),
        ),
        SizedBox(width: 10,),
        Expanded(child: Column(
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment : CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Flexible(child: Image(image: AssetImage(tDashBoardmage))),
                      //Flexible(child: Image(image: AssetImage(tDashBoardmage))),
                    ],
                  ),
                  //const SizedBox(height: 25,),
                  Text(tDashBoardBannertitle2, style: txtTheme.headline6,maxLines: 2, overflow: TextOverflow.ellipsis,),
                  Text(tDashBoardBannersubtitle, style: txtTheme.bodyText1,maxLines: 1, overflow: TextOverflow.ellipsis,),
                ],
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(onPressed: (){}, child: const Text(tDashBoardButton))),
          ],
        ))
      ],
    );
  }
}
