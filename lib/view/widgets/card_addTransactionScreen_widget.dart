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
        margin: EdgeInsets.only(right: 10, left: 10),
        width: BluDimensions.width(context),
        height: 70,
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 5),
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: Icon(
                        Icons.person_outline,
                        size: 22,
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 32,
                  padding: EdgeInsets.only(right: 6, bottom: 6),
                  margin: EdgeInsets.only(
                    top: 40,
                    right: 25,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    bankImage,
                    width: 20,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  cardNum,
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
