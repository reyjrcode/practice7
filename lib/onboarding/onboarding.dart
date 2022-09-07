// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:practice7/Constant/colors.dart';

// class ViewOnBoarding extends StatelessWidget {
//   const ViewOnBoarding ({Key? key}) : super(key: key);

//   @override
//  Widget build(BuildContext context) {
//     final controller= Get.put(OnboardController());
//     return Obx(
//       ()=> WillPopScope(
//         onWillPop: ()async=>false,
//         child: Scaffold(
//           appBar: TopcardOnboard(
//             skip: ()=>Get.toNamed(signin),
//             getStarted: ()=>Get.toNamed(signin),
//             isLastpage: controller.selectedPageNumber.value==
//             listonboarding.indexOf(listonboarding.last)
//             ?true
//             :false,
//           ),
//           backgroundColor: colorWhite,
//           body:SafeArea(
            
//             child:  PageView.builder(
//               physics:const BouncingScrollPhysics(),
//               controller: controller.pageController,
//           itemCount: listonboarding.length,
//           onPageChanged: controller.selectedPageNumber,
//           itemBuilder:(context,index)=>
//           OnboardCard(
//             headTitle:listonboarding[index].headTitle,
//             image:listonboarding[index].image,
//             description: listonboarding[index].Description,          )
//           ),
//           ),
//           bottomNavigationBar: BottomOnBoardingCard(
//             selectedIndex: controller.selectedPageNumber.value,
//           ),
//         ),

//       ),
//     );

//   }
// }