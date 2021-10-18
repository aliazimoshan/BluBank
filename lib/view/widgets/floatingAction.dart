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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Center(
        child: FloatingActionButton.extended(
          backgroundColor: BluColor.primaryColor,
          foregroundColor: Colors.white,
          onPressed: () {
// Respond to button press
          },
          icon: Icon(
            Icons.add,
            size: 30,
          ),
          label: Text(
            'انتقال جدید',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
