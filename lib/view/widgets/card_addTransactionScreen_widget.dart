import 'dart:ui';
import 'package:blubank/constant/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Card_addTransactionScreen_widget extends StatelessWidget {
  final String name;
  final Widget? route;
  final String cardnum;
  final Image? bankimage;

  const Card_addTransactionScreen_widget({
    required this.name,
    this.route,
   required this.cardnum,
   this.bankimage,
    
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
        height: 100,
        child:Row(
          children: [
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(name,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22),),
              SizedBox(height: 3,),
              Text(cardnum,style: TextStyle(color: Colors.grey,fontSize: 18),),
            ],),
            SizedBox(width: 15,),
             Stack(
              children: [
                Container(
                  width: 60,
                  margin: EdgeInsets.only(left: 15),
                  alignment:Alignment.bottomRight,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                  child: Center(child: Icon(Icons.person_outline,size: 30,color: Colors.grey[500],),),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(right: 9,bottom: 9),
                  margin: EdgeInsets.only(top: 55,),
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    shape: BoxShape.circle,                    
                  ),
                  child: (bankimage),
                  
                ),
              ],
            ),
          ],
        ) 
      ),
    );
  }
}
