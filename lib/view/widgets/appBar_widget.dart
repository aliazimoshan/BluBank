import 'package:blubank/view/widgets/contactModal_widget.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends AppBar {
  final String text;
  final Color backgroundColor;

  AppBarWidget({
    required this.text,
    this.backgroundColor = Colors.white,
  }) : super(
          centerTitle: true,
          backgroundColor: backgroundColor,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          actions: <Widget>[
            Contactmodalwidget(),
          ],
        );
}
