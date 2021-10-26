import 'package:blubank/constant/colors.dart';
import 'package:flutter/material.dart';

class FloationActionAdd extends StatefulWidget {
  const FloationActionAdd({Key? key}) : super(key: key);

  @override
  _FloationActionAddState createState() => _FloationActionAddState();
}

class _FloationActionAddState extends State<FloationActionAdd> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: BluColor.primaryColor,
      foregroundColor: Colors.white,
      onPressed: () {
        // Respond to button press
      },
      icon: Icon(
        Icons.add_outlined,
        size: 30,
      ),
      label: Text(
        'انتقال جدید',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
