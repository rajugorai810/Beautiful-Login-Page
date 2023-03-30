

import 'package:flutter/material.dart';
import 'package:loginpage/src/features/authentication/models/DashBoard_model/categories_model.dart';

import '../../../../../constants/colors.dart';

class DashboardCategories extends StatelessWidget {
  const DashboardCategories({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list = DashBoardCategoriesModel.list;
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index)=> GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 170,
            height: 45,
            child: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tDarkColor,
                  ),
                  child: Center(
                    child: Text(list[index].title, style: txtTheme.headline6?.apply(
                        color: Colors.white

                    ),),
                  ),
                ),
                SizedBox(width: 5,),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(list[index].heading, style: txtTheme.headline6,overflow: TextOverflow.ellipsis,),
                      Text(list[index].subHeading, style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        shrinkWrap: true,
        // children: [
        //   SizedBox(
        //     width: 170,
        //     height: 45,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: tDarkColor,
        //           ),
        //           child: Center(
        //             child: Text("JS", style: txtTheme.headline6?.apply(
        //                 color: Colors.white
        //
        //             ),),
        //           ),
        //         ),
        //         SizedBox(width: 5,),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text("Java Script", style: txtTheme.headline6,overflow: TextOverflow.ellipsis,),
        //               Text("10 Lessons", style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 45,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: tDarkColor,
        //           ),
        //           child: Center(
        //             child: Text("JS", style: txtTheme.headline6?.apply(
        //                 color: Colors.white
        //
        //             ),),
        //           ),
        //         ),
        //         SizedBox(width: 5,),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text("Java Script", style: txtTheme.headline6,overflow: TextOverflow.ellipsis,),
        //               Text("10 Lessons", style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        //   SizedBox(
        //     width: 170,
        //     height: 45,
        //     child: Row(
        //       children: [
        //         Container(
        //           width: 45,
        //           height: 45,
        //           decoration: BoxDecoration(
        //             borderRadius: BorderRadius.circular(10),
        //             color: tDarkColor,
        //           ),
        //           child: Center(
        //             child: Text("JS", style: txtTheme.headline6?.apply(
        //                 color: Colors.white
        //
        //             ),),
        //           ),
        //         ),
        //         SizedBox(width: 5,),
        //         Flexible(
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text("Java Script", style: txtTheme.headline6,overflow: TextOverflow.ellipsis,),
        //               Text("10 Lessons", style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),
        //             ],
        //           ),
        //         )
        //       ],
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
