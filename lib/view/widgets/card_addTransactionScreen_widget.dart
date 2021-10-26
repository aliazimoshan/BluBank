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
        margin: EdgeInsets.all(5),
        width: BluDimensions.width(context),
        height: 100,
        child: Row(
          children: [
             Stack(
              children: [
                Container(
                  width: 50,
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
                  padding: EdgeInsets.only(right: 6, bottom: 6),
                  margin: EdgeInsets.only(
                    top: 50,
                    right: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(bankImage),
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
           
           
          ],
        ),
      ),
    );
  }
}
