import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:practice7/Constant/SVGandPNGimage.dart';
import 'package:practice7/Constant/colors.dart';
import 'package:practice7/Constant/returnimage.dart';

import 'package:practice7/controller/myhomecontroller.dart';
import 'package:practice7/font/fontfamily.dart';
import 'package:practice7/widget/weatheritem/item.dart';

class HomeFrame extends StatelessWidget {
  const HomeFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyHomeController());
    return Obx(
      (() => Scaffold(
      
            body: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [pink, tint],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SafeArea(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(right: 0, left: 0, top: 20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: SvgPicture.asset(svgfilter),
                              ),
                            ),
                            SizedBox(height: 5.h),
                            controller.placelist.isEmpty
                                ? const SizedBox.shrink()
                                : SizedBox(
                                    height: 377.dp,
                                    child: PageView.builder(
                                      clipBehavior: Clip.none,
                                      controller: controller.pagecontroller,
                                      scrollDirection: Axis.horizontal,
                                      physics: const BouncingScrollPhysics(),
                                      itemCount: controller.placelist.length,
                                      onPageChanged: (s) =>
                                          controller.onchange(s),
                                      itemBuilder: (context, index) {
                                        return Obx(() => Transform.scale(
                                              scale: controller
                                                          .currentindex.value ==
                                                      index
                                                  ? 1.1
                                                  : 0.9,
                                              child: WeatherItem(
                                                todayicon:
                                                    ReturnImage.manualreturn(
                                                        controller
                                                            .placelist[index]
                                                            .current!
                                                            .condition!
                                                            .text!),
                                                place:
                                                    "${controller.searchlist[index].name}",
                                                date: controller.format
                                                    .format(DateTime.now()),
                                                status1: controller
                                                    .placelist[index]
                                                    .current!
                                                    .condition!
                                                    .text!,
                                                status2: controller
                                                    .placelist[index]
                                                    .current!
                                                    .windDir,
                                                humidity: controller
                                                    .placelist[index]
                                                    .current!
                                                    .tempC!
                                                    .toStringAsFixed(0),
                                                press: () =>
                                                    controller.onselectedgoto(
                                                        controller
                                                            .placelist[index],
                                                        controller
                                                            .searchlist[index]
                                                            .name),
                                              ),
                                            ));
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 50,),
                            SizedBox(
                              width: 190.dp,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset(waterdrop),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    "Precipitaiton",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18.dp,
                                        fontFamily: fontMedium,
                                        color: white),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    controller.precipitation.value.isEmpty
                                        ? ""
                                        : "${controller.precipitation.value}%",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18.dp,
                                        fontFamily: fontMedium,
                                        color: white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 2.h),
                            SizedBox(
                              width: 160.dp,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SvgPicture.asset(
                                    humidity,
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    "Humidity",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18.dp,
                                        fontFamily: fontMedium,
                                        color: white),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    controller.humidity.value.isEmpty
                                        ? ""
                                        : "${controller.humidity.value} %",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 18.dp,
                                        fontFamily: fontMedium,
                                        color: white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              "Wind",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18.dp,
                                  fontFamily: fontMedium,
                                  color: white),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              controller.wind.value.isEmpty
                                  ? ""
                                  : "${controller.wind.value} km/h",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 18.dp,
                                  fontFamily: fontMedium,
                                  color: white),
                            ),
                          ],
                        ),
                      ),




                    ),
                  ),
                ),
              ],
            ),
               drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text(
                  "Jego Shit!",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("JegoAvenidoShit@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "J",
                    style: TextStyle(fontSize: 30.0, color: Colors.blueAccent),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person_add),
              title: const Text(' Add Costumer'),
              onTap: () {
                  Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Costumers()),
                // );
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' All Sales '),
              onTap: () {
                  Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const AllSales()),
                // );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add),
              title: const Text(' Add Product '),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AddProduct()),
                // );
                 Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text('Statistics '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.format_shapes_sharp),
              title: const Text(' Categories '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text(' Settings '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.support),
              title: const Text('Support'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Log Out'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Row(
              children: const [
                SizedBox(
                  height: 60,
                ),
                Text(
                  '        Developed by Jego Shit!!',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                )
              ],
            ),
          ],
        ),
      ),
          )),
    );
  }
}
//ubos sa singlechild scrollview ni i butang
 