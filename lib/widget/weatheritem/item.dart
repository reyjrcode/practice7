import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:practice7/Constant/colors.dart';
import 'package:practice7/font/fontfamily.dart';

class WeatherItem extends StatelessWidget {
  //const WeatherItem({Key? key}) : super(key: key);
  final String? todayicon, place, humidity, status1, status2, date;
  final Function()? press;

  const WeatherItem(
      {super.key,
      this.todayicon,
      this.place,
      this.humidity,
      this.status1,
      this.status2,
      this.date,
      this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        height: 377.dp,
        width: 200.dp,//230
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.passthrough,
          children: [
            Positioned(
              bottom: 20,
              child: Container(
                height: 250.dp,//247
                width: 240.dp,
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(4, 0),
                          blurRadius: 20,
                          spreadRadius: 0,
                          color: Colors.black.withOpacity(0.25)),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 70, left: 15, right: 15, bottom: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              place ?? "",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 16.dp,//18
                                  fontFamily: fontBold,
                                  color: textColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Expanded(
                                child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        humidity ?? '',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 60.dp,//64
                                            fontFamily: fontBold,
                                            color: textColor),
                                      ),
                                      SizedBox(
                                        height: 35.dp,
                                        child: Text(
                                          "°C",
                                          style: TextStyle(
                                              fontSize: 14.dp,
                                              fontFamily: fontMedium,
                                              color: textColor),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Chip(
                                          backgroundColor:
                                              pinkish.withOpacity(0.5),
                                          label: Text(
                                            status1 ?? 'data',
                                            style: TextStyle(
                                                fontSize: 10.dp,
                                                fontFamily: fontMedium,
                                                color: white),
                                          ),
                                        ),
                                        Chip(
                                          backgroundColor:
                                              lightviolet.withOpacity(0.5),
                                          label: Text(
                                            status2 ?? 'data',
                                            style: TextStyle(
                                                fontSize: 10.dp,
                                                fontFamily: fontMedium,
                                                color: white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: -100,
              right: 0,
              left: 0,
              child: Image.asset(
                todayicon!,
                height: 391.dp,
                width: 201.dp,
              ),
            ),
            Positioned(
                bottom: 0,
                left: 50,
                right: 70,
                child: Container(
                  height: 40.dp,//47
                  width: 163.dp,
                  decoration: BoxDecoration(
                      color: purple, borderRadius: BorderRadius.circular(18)),
                  child: Center(
                    child: Text(
                      'View Stats',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 14.dp,fontFamily: fontBold,color: white),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
