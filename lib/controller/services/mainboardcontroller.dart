import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice7/onboarding/Comunnity.dart';
import 'package:practice7/onboarding/Feed.dart';
import 'package:practice7/onboarding/Home.dart';
import 'package:practice7/onboarding/Profile.dart';


class MainController extends GetxController {
  final selectedIndex = 0.obs;
  final List<Widget> pages = const [
    HomeFrame(),
    CommunityFrame(),
    FeedFrame(),
    ProfileFrame()
  ];
}
