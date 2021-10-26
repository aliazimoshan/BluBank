import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/view/screens/profileScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardSwitchScreen extends StatefulWidget {
  const CardSwitchScreen({
    Key? key,
    required this.title,
    this.subtitle,
    this.greyicon,
    this.color,
    this.iconColor,
  }) : super(key: key);

  final String? title;
  final String? subtitle;
  final IconData? greyicon;
  final Color? color;
  final Color? iconColor;
  @override
  _CardSwitchScreenState createState() => _CardSwitchScreenState();
}

class _CardSwitchScreenState extends State<CardSwitchScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title ?? ""),
            widget.subtitle != null
                ? Text(
                    widget.subtitle ?? "",
                    style: TextStyle(
                      fontSize: 16,
                      color: BluColor.textgray,
                    ),
                  )
                : Container()
          ],
        ),
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(48),
            color: BluColor.primaryColor,
          ),
          height: 48,
          width: 48,
          child: Center(
            child: Icon(
              widget.greyicon,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
        trailing: CupertinoSwitch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },
          activeColor: Colors.green,
        ),
      ),
    );
  }
}
