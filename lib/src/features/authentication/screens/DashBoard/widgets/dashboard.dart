import 'package:flutter/material.dart';
import 'package:loginpage/src/constants/colors.dart';
import 'package:loginpage/src/constants/image_strings.dart';
import 'package:loginpage/src/constants/sizes.dart';
import 'package:loginpage/src/constants/text_strings.dart';
import 'package:loginpage/src/features/authentication/screens/DashBoard/widgets/search.dart';

import 'appBar.dart';
import 'banners.dart';
import 'categories.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: DashBoardAppBar(),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(tDashBoardPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Heading
            Text(
              tDashBoardtitle,
              style: txtTheme.bodyText1,
            ),
            Text(
              tDashBoardHeading,
              style: txtTheme.headline2,
            ),
            const SizedBox(
              height: tDashBoardPadding,
            ),

            //Search Box
            DashBoardSearchBox(txtTheme: txtTheme),
            const SizedBox(
              height: tDashBoardPadding+10,
            ),

            // Categories

            DashboardCategories(txtTheme: txtTheme),
            const SizedBox(height: tDashBoardPadding,),


            // Banner
            DashBoardBanners(txtTheme: txtTheme),
            const SizedBox(
              height: tDashBoardPadding+10,
            ),

            // Top Courses

            Text(tDashBoardtopCourses, style: txtTheme.headline2?.apply(fontSizeFactor: 0.9)),
            SizedBox(
              height: 200,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 320,
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, top: 5),
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment : MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(child: Text("Flutter Crash Courses", style: txtTheme.headline6?.apply(fontSizeFactor: 1), maxLines: 2,overflow: TextOverflow.ellipsis,)),
                                Flexible(child: Image(image: AssetImage(tDashBoardmage), height: 110, )),
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(shape : const CircleBorder()),
                                    onPressed: (){}, child: Icon(Icons.play_arrow)),
                                const SizedBox(
                                  height: tDashBoardPadding+10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("3 Sections", style: txtTheme.headline5, overflow: TextOverflow.ellipsis,),
                                    Text("Programming Languages", style: txtTheme.bodyText1,overflow: TextOverflow.ellipsis,),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(child: Text("Flutter Crash Courses", style: txtTheme.headline6?.apply(fontSizeFactor: 1), maxLines: 2,overflow: TextOverflow.ellipsis,)),
                              Flexible(child: Image(image: AssetImage(tDashBoardmage), height: 110, )),
                            ],
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(shape : const CircleBorder()),
                                  onPressed: (){}, child: Icon(Icons.play_arrow)),
                              const SizedBox(
                                height: tDashBoardPadding+10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("3 Sections", style: txtTheme.headline5, overflow: TextOverflow.ellipsis,),
                                  Text("Programming Languages", style: txtTheme.bodyText1,overflow: TextOverflow.ellipsis,),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 320,
                    height: 200,
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(child: Text("Flutter Crash Courses", style: txtTheme.headline6?.apply(fontSizeFactor: 1), maxLines: 2,overflow: TextOverflow.ellipsis,)),
                              Flexible(child: Image(image: AssetImage(tDashBoardmage), height: 110, )),
                            ],
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(shape : const CircleBorder()),
                                  onPressed: (){}, child: Icon(Icons.play_arrow)),
                              const SizedBox(
                                height: tDashBoardPadding+10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("3 Sections", style: txtTheme.headline5, overflow: TextOverflow.ellipsis,),
                                  Text("Programming Languages", style: txtTheme.bodyText1,overflow: TextOverflow.ellipsis,),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            )


          ],
        ),
      )),
    );
  }
}




