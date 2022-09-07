 
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:practice7/Constant/SVGandPNGimage.dart';
import 'package:practice7/Constant/colors.dart';
import 'package:practice7/controller/services/mainboardcontroller.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:practice7/route/routename.dart';

class BoardingView extends StatelessWidget {
  const BoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainController());
  return WillPopScope(
      onWillPop: () async => false,
      child: Obx(
        () => Scaffold(
          backgroundColor: colorWhite,
          body: SafeArea(
            child: IndexedStack(
              index: controller.selectedIndex.value,
              children: controller.pages,
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 9.5.h,
            child: BottomNavigationBar(
              currentIndex: controller.selectedIndex.value,
              onTap: controller.selectedIndex,
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconSize: 2.5.w,
              selectedItemColor: bottomNavColorViolet,
              showUnselectedLabels: false,
              unselectedItemColor: colorDark.withOpacity(0.2),
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        homeicon,
                        height: 3.5.h,
                        width: 3.5.w,
                        color: controller.selectedIndex.value == 0
                            ? bottomNavColorViolet
                            : colorDark.withOpacity(0.2),
                      ),
                    ),
                    label: "Home"),


                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        communityicon,
                        height: 3.5.h,
                        width: 3.5.w,
                        color: controller.selectedIndex.value == 1
                            ? bottomNavColorViolet
                            : colorDark.withOpacity(0.2),
                      ),
                    ),
                    label: "Community"),


                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        feedicon,
                        height: 3.5.h,
                        width: 3.5.w,
                        color: controller.selectedIndex.value == 2
                            ? bottomNavColorViolet
                            : colorDark.withOpacity(0.2),
                      ),
                    ),
                    label: "Feed"),


                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        profileicon,
                        height: 3.5.h,
                        width: 3.5.w,
                        color: controller.selectedIndex.value == 3
                            ? bottomNavColorViolet
                            : colorDark.withOpacity(0.2),
                      ),
                    ),
                    label: "Profile"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}