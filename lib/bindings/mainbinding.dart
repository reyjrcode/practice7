import 'package:get/get.dart';
import 'package:practice7/dashboard/dashboard.dart';
import 'package:practice7/onboarding/Comunnity.dart';
import 'package:practice7/onboarding/Feed.dart';
import 'package:practice7/onboarding/Home.dart';
import 'package:practice7/onboarding/Profile.dart';

class Bindingmain with Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => const HomeFrame(), fenix: true);
    Get.lazyPut(() => const CommunityFrame(), fenix: true);
    Get.lazyPut(() => const FeedFrame(), fenix: true);
    Get.lazyPut(() => const ProfileFrame(), fenix: true);
    Get.lazyPut(() => const BoardingView(), fenix: true);
  }
}
