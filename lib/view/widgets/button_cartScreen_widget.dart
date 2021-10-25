import 'package:blubank/constant/colors.dart';
import 'package:flutter/material.dart';

class Buttoncartscreenwidget extends StatelessWidget {
  final String title;
  final IconData iconwhite;

  const Buttoncartscreenwidget({
    required this.title,
    required this.iconwhite,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[200],
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  child: Icon(
                    iconwhite,
                    color: BluColor.primaryColor,
                    size: 24,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  child: Center(
                    child: Text(title,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: BluColor.primaryColor)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
