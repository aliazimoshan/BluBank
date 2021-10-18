import 'dart:ui';
import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  const TextInputWidget();

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextField(
        obscureText: _isObscure,
        decoration: new InputDecoration(
          filled: true,
          suffixIcon: IconButton(
            icon: Icon(
              _isObscure ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
          hintText: 'رمز عبور',
          hintStyle: TextStyle(
            fontSize: 14,
            color: BluColor.textgray,
          ),
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.only(right: 10, top: 5, bottom: 5),
          fillColor: Colors.grey[200],
          enabledBorder: UnderlineInputBorder(
            borderSide: new BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
