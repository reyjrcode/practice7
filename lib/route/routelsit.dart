import 'package:get/get.dart';
import 'package:practice7/dashboard/dashboard.dart';
import 'package:practice7/onboarding/Comunnity.dart';
import 'package:practice7/onboarding/Feed.dart';
import 'package:practice7/onboarding/Home.dart';
import 'package:practice7/onboarding/Profile.dart';
import 'package:practice7/onboarding/weatherdetail.dart';
import 'package:practice7/route/routename.dart';

class RouteList {
  static List<GetPage> list = <GetPage>[
    GetPage(
        transition: Transition.leftToRight,
        transitionDuration: 250.milliseconds,
        name: home,
        page: () => const HomeFrame()),
    GetPage(
        transition: Transition.leftToRight,
        transitionDuration: 250.milliseconds,
        name: community,
        page: () => const CommunityFrame()),
    GetPage(
        transition: Transition.leftToRight,
        transitionDuration: 250.milliseconds,
        name: feed,
        page: () => const FeedFrame()),
    GetPage(
        transition: Transition.leftToRight,
        transitionDuration: 250.milliseconds,
        name: profile,
        page: () => const ProfileFrame()),
        GetPage(
        transition: Transition.leftToRight,
        transitionDuration: 250.milliseconds,
        name: boarding,
        page: () => const BoardingView()),
        GetPage(
      name: weatherpage,
      page: () => const Weatherdetail(),
    )
    
  ];
}
