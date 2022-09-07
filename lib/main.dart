 

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:practice7/route/routelsit.dart';
import 'package:practice7/route/routename.dart';
 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  // Widget build(BuildContext context) {
  // return FlutterSizer(builder: ((p0, p1, p2) => GetMaterialApp(
  //   debugShowCheckedModeBanner: false,
  //   getPages: RouteList.list,
  //   initialRoute: boarding,
  // )),
  // );
  
  // }
   Widget build(BuildContext context) {
    return FlutterSizer(builder: (context, x, y) {
      return GetMaterialApp(
        title: 'Flutter Demo',
        getPages: RouteList.list,
        initialRoute: boarding,
        debugShowCheckedModeBanner: false,
      );
    });
  }
}

 
 