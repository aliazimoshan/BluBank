import 'package:blubank/constant/colors.dart';
import 'package:blubank/view/widgets/button_widget.dart';
import 'package:blubank/view/widgets/card_addTransactionScreen_widget.dart';
import 'package:flutter/material.dart';

class AsalScreen extends StatelessWidget {
  const AsalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asal"),
      ),
      body: ListView(
        children: [
          buttomwidget(
            title: "افزایش موجودی",
            color: Colors.white,
            backgroundColor: BluColor.primaryColor.withOpacity(0.7),
            icons: Icons.add,
          ),
          buttomwidget(
            title: "ورود با تشخیص چهره",
            color: Colors.white,
            backgroundColor: BluColor.primaryColor,
            icons: Icons.face_unlock_outlined,
          ),
          buttomwidget(
            title: "اشتراک گذاری",
            color: BluColor.primaryColor,
            backgroundColor:Colors.grey[200],
            icons:( Icons.drive_folder_upload_outlined),
          ),
          Card_addTransactionScreen_widget(name: "احسان شباکی", cardnum: "6393  ****  ****  4027", bankimage: Image.asset('assets/img/bankimg1.png'),),
          Card_addTransactionScreen_widget(name: "کریم اسد الهی", cardnum: "6362  ****  ****  5173",bankimage: Image.asset('assets/img/bankimg2.png')),
          Card_addTransactionScreen_widget(name: "بهرام صادقی", cardnum: "6104  ****  ****  7569",bankimage: Image.asset('assets/img/bankimg3.png')),
          Card_addTransactionScreen_widget(name: "والا اطمینان باصری", cardnum: "6274  ****  ****  2517",bankimage: Image.asset('assets/img/bankimg4.png')),
        ],
      ),
    );
  }
}
