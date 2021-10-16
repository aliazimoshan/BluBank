import 'dart:ui';
import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:flutter/material.dart';
class TextInputWidget extends StatelessWidget {
    
const TextInputWidget(
    
  );

  @override
  Widget build(BuildContext context) {
    return 
        Directionality(textDirection: TextDirection.rtl, child:  TextField(
            decoration: new InputDecoration(
              filled: true,
              hintText:'رمز ورود' ,
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.only(right:10,top: 17,bottom: 17),
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
