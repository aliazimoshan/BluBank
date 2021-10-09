import 'dart:ui';
import 'package:blubank/constant/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class CardaddTransactionScreenwidget extends StatelessWidget {
  final String name;
  final Widget? route;
  final String cardNum;
  final String bankImage;
  const CardaddTransactionScreenwidget({
    required this.name,
    this.route,
    required this.cardNum,
    required this.bankImage,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (route != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => route!,
            ),
          );
        } else {
          print("No route to go");
        }
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: BluDimensions.width(context),
        height: 100,
        child: Row(
          children: [
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  cardNum,
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Stack(
              children: [
                Container(
                  width: 55,
                  margin: EdgeInsets.only(left: 5),
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.person_outline,
                      size: 30,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  padding: EdgeInsets.only(right: 8, bottom: 8),
                  margin: EdgeInsets.only(
                    top: 55,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(bankImage),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}