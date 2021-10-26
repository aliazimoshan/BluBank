import 'package:blubank/view/widgets/contactModal_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {
  final String text;
  final Color? backgroundColor;
  final Icon? icon;
  final Color? foregroundcolor;
  AppBarWidget({
    required this.text,
    this.backgroundColor = Colors.white,
    this.icon,
    this.foregroundcolor,
  }) : super(
          foregroundColor: foregroundcolor,
          centerTitle: true,
          backgroundColor: backgroundColor,
          iconTheme: IconThemeData(color: foregroundcolor ?? Colors.black),
          title: Text(
            text,
            style: TextStyle(color: foregroundcolor ?? Colors.black),
          ),
          leading: icon,
          elevation: 0,
          actions: <Widget>[
            Contactmodalwidget(
              color: backgroundColor,
              background: foregroundcolor,
            ),
          ],
        );
}
