import 'dart:ui';
import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class buttomWidget extends StatelessWidget {
  final String title;
  final Widget? route;
  final Color? color;
  final Color? backgroundColor;
  final IconData  icons; 
  final double?sizebox;
  
 
  

  const buttomWidget({
    required this.title,
    this.route,
    this.color,
    this.backgroundColor,
    required this.icons,
    this.sizebox,
    
   

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
        margin: EdgeInsets.all(10),
        
        width: BluDimensions.width(context),
        height: 70,
        decoration: BoxDecoration(
          
          color: backgroundColor ?? BluColor.primaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Text(
            title,
            style: TextStyle(
              color: color ?? Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: sizebox),
          Icon(
            icons,
            color:color,
            size: 30,
           ),
          ],
        )
      ),
    );
  }
}
      
  
  