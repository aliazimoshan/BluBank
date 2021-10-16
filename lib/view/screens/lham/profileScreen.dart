import 'dart:ui';

import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/view/widgets/card_cartScreen_widget.dart';
import 'package:blubank/view/widgets/card_profileScreen_widget.dart';
import 'package:blubank/view/widgets/contactModal_widget.dart';
import 'package:blubank/view/widgets/rectangleCard_homeScreen_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

header(BuildContext context, {String title = ''}) {
  return Container(
    width: BluDimensions.width(context),
    child: Text(
      title,
      style: TextStyle(fontSize: 24),
    ),
  );
}

profile({
  String name = '',
  String id = '',
}) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(75),
          color: Colors.black,
        ),
        width: 75,
        height: 75,
      ),
      SizedBox(height: 5),
      Text(name),
      SizedBox(height: 5),
      Row(
        children: [
          Spacer(),
          Text(
            id,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          Text(
            "@",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          Spacer(),
        ],
      )
    ],
  );
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "تنظیمات",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
          padding: EdgeInsets.only(top: 25, right: 25, left: 25),
          // color: Colors.green[100],
          width: BluDimensions.width(context),
          height: BluDimensions.height(context),
          child: ListView(
            children: [
              Column(
                children: [
                  //--------------- profile ---------------\\
                  profile(name: 'الهام صادقی', id: 'lhamsadeqi'),
                  SizedBox(height: 20),

                  //--------------- informatin ---------------\\
                  header(context, title: "اطلاعات"),
                  SizedBox(height: 20),
                  Cartprofilescreenwidget(
                      whiteicon: Icons.account_balance_rounded,
                      title: "حساب بانکی"),
                  SizedBox(height: 10),
                  Cartprofilescreenwidget(
                      whiteicon: Icons.sim_card_rounded,
                      title: "تغییر شماره تلفن همراه"),
                  SizedBox(height: 10),
                  Cartprofilescreenwidget(
                      whiteicon: Icons.place_rounded,
                      title: "تغییر آدرس سکونت"),
                  SizedBox(height: 20),

                  //--------------- security ---------------\\
                  header(context, title: "امنیت"),
                  SizedBox(height: 20),
                  Cartprofilescreenwidget(
                      whiteicon: Icons.vpn_key_rounded,
                      title: "تغییر رمز عبور"),
                  SizedBox(height: 10),
                  Cartprofilescreenwidget(
                      whiteicon: Icons.smartphone_outlined,
                      title: "دستگاه های من"),
                  SizedBox(height: 20),

                  //--------------- notification ---------------\\
                  header(context, title: "اطلاع رسانی"),
                  SizedBox(height: 20),
                  Cartprofilescreenwidget(
                      whiteicon: Icons.notifications_rounded,
                      title: "تنظیمات اطلاع رسانی"),
                  SizedBox(height: 20),

                  //--------------- public ---------------\\
                  header(context, title: "عمومی"),
                  SizedBox(height: 20),
                ],
              ),
            ],
          )),
    );
  }
}
