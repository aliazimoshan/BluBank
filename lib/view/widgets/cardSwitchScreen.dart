import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/constant/colors.dart';
import 'package:flutter/material.dart';

class CardSwitchScreen extends StatefulWidget {
  const CardSwitchScreen({Key? key}) : super(key: key);

  @override
  _CardSwitchScreenState createState() => _CardSwitchScreenState();
}

class _CardSwitchScreenState extends State<CardSwitchScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: BluDimensions.height(context) / 7,
        color: BluColor.basegray,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 15, 10),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: BluColor.primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    Icons.snowboarding_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('مسدودسازی موقت',
                        style: TextStyle(color: BluColor.textdark)),
                    Text('بلوکارت خود را بصورت موقت غیرفعال کنید.',
                        style: TextStyle(color: BluColor.textgray))
                  ],
                ),
              ),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                activeTrackColor: BluColor.primaryColor.withOpacity(0.4),
                activeColor: BluColor.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
