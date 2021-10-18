import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/view/screens/lham/profileScreen.dart';
import 'package:blubank/view/widgets/appBar_widget.dart';
import 'package:blubank/view/widgets/card_cartScreen_widget.dart';
import 'package:blubank/view/widgets/cartscreen_modal_widget.dart';
import 'package:blubank/view/widgets/contactModal_widget.dart';
import 'package:blubank/view/widgets/rectangleCard_homeScreen_widget.dart';
import 'package:flutter/material.dart';

class BlucardBack extends StatelessWidget {
  final String name;
  final String col1;
  final String col2;
  final String col3;
  final String col4;
  final String date;
  final String cvv2;

  const BlucardBack({
    required this.name,
    required this.col1,
    required this.col2,
    required this.col3,
    required this.col4,
    required this.date,
    required this.cvv2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 25, left: 25),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(25),
      ),
      width: 250,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Spacer(),
                  Text(name),
                  SizedBox(height: 25),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(col1),
                      Text(col2),
                      Text(col3),
                      Text(col4),
                      SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("CVV2"),
                              Text(cvv2),
                            ],
                          ),
                          SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(":EXp"),
                              Text(date),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.black,
            width: 50,
          ),
        ],
      ),
    );
  }
}
