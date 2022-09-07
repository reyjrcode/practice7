 
import 'package:flutter/material.dart';

class CommunityFrame extends StatelessWidget {
  const CommunityFrame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),

        child: Column(children:const  [
            Text('This is Community Page Shit!', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.blue),)
        ],),
      )),
    );
  }
}