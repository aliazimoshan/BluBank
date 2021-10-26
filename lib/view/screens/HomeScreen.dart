import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/view/widgets/rectangleCard_homeScreen_widget.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

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
            child: Container(
              height: BluDimensions.height(context) / 4,
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Icon(
                    Icons.qr_code_rounded,
                    size: 65,
                    color: Colors.white,
                  ),
                  Text(
                    'پرداخت سریع',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 30,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ],
              ),
            ),
          ),
          SlidingSheet(
            elevation: 5,
            cornerRadius: 10,
            // scrollSpec: const ScrollSpec(overscroll: false),
            snapSpec: const SnapSpec(
              snap: true,
              snappings: [0.24, 0.7, 0.9],
              positioning: SnapPositioning.relativeToAvailableSpace,
              initialSnap: 0.7,
            ),
            builder: (context, state) {
              return Container(
                height: BluDimensions.height(context) - 120,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, bottom: 10),
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
                              size: 55,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'خدمات پرداخت',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        childAspectRatio: 0.6,
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
