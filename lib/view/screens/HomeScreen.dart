import 'dart:ui';

import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import 'view/widgets/rectangleCard_homeScreen_widget.dart';

class BluHomeScreen extends StatefulWidget {
  @override
  _BluHomeScreenState createState() => _BluHomeScreenState();
}

class _BluHomeScreenState extends State<BluHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: BluDimensions.width(context),
            height: BluDimensions.height(context),
            color: BluColor.primaryColor,
            child: Text('fghjkl;'),
          ),
          SlidingSheet(
            elevation: 5,
            cornerRadius: 15,
            snapSpec: const SnapSpec(
              snap: true,
              snappings: [0.2, 0.7, 0.9],
              positioning: SnapPositioning.relativeToAvailableSpace,
              initialSnap: 0.7,
            ),
            builder: (context, state) {
              return Container(
                height: BluDimensions.height(context),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.only(right: 20),
                        width: BluDimensions.width(context),
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.red[300],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'با بلو هزینشو بده!',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'پرداخت با QR در کارتخوان های سپ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 40),
                            Icon(
                              Icons.mobile_friendly,
                              color: Colors.white,
                              size: 35,
                            ),
                          ],
                        ),
                      ),
                      Text('خدمات روزمره'),
                      GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        childAspectRatio: 0.7,
                        crossAxisCount: 4,
                        // padding: EdgeInsets.all(10),
                        shrinkWrap: true,
                        crossAxisSpacing: 10,
                        children: [
                          Rectanglecardhomescreenwidget(
                            cardcolor: Color(0xff7c70bc),
                            cardicon: Icons.checklist,
                            title: 'شارژ',
                          ),
                          Rectanglecardhomescreenwidget(
                            cardcolor: Color(0xff4f91e4),
                            cardicon: Icons.network_wifi,
                            title: 'اینترنت',
                          ),
                          Rectanglecardhomescreenwidget(
                            cardcolor: Color(0xff74a9ea),
                            cardicon: Icons.checklist_outlined,
                            title: 'قبض',
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 20,
                      // ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
