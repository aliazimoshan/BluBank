import 'package:blubank/constant/colors.dart';
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
      height: 60,
      child: ListTile(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.title ?? ""),
            widget.subtitle != null
                ? Text(
                    widget.subtitle ?? "",
                    style: TextStyle(fontSize: 16, color: BluColor.textgray),
                  )
                : Container()
          ],
        ),
        leading: Container(
          decoration: BoxDecoration(
            color: widget.color ?? BluColor.primaryColor,
            shape: BoxShape.circle,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(
              widget.greyicon,
              color: widget.iconColor ?? Colors.blueGrey[500],
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
