import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/view/screens/roya/royaScreen.dart';
import 'package:flutter/material.dart';

class CardTestWidget extends StatelessWidget {
  final String title;
  final Widget? route;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? shadowColor;

  const CardTestWidget({
    required this.title,
    this.route,
    this.textColor,
    this.backgroundColor,
    this.shadowColor,
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
        margin: EdgeInsets.all(20),
        width: BluDimensions.width(context),
        height: 100,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: shadowColor ?? Colors.grey[300]!,
              blurRadius: 3,
              spreadRadius: 3,
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor ?? Colors.grey[600],
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
