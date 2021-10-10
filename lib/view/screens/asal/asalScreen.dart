
import 'package:blubank/view/widgets/textInput_widget';
import 'package:blubank/constant/colors.dart';
import 'package:blubank/view/widgets/button_widget.dart';
import 'package:blubank/view/widgets/card_addTransactionScreen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
         
          buttomWidget(
            title: "افزایش موجودی",
            color: Colors.white,
            backgroundColor: BluColor.primaryColor.withOpacity(0.7),
            icons: Icons.add,
            sizebox: (18),
          ),
          buttomWidget(
            title: "ورود با تشخیص چهره",
            color: Colors.white,
            backgroundColor: BluColor.primaryColor,
            icons: Icons.face_unlock_outlined,
          ),
          buttomWidget(
            title: "اشتراک گذاری",
            color: BluColor.primaryColor,
            backgroundColor:Colors.grey[200],
            icons:( Icons.drive_folder_upload_outlined),
            sizebox: (18),
          ),
          CardaddTransactionScreenwidget(name: "احسان شباکی", cardNum: "6393  ****  ****  4027", bankImage: Image.asset('assets/img/bankimg1.png',),),
          CardaddTransactionScreenwidget(name: "کریم اسد الهی", cardNum: "6362  ****  ****  5173",bankImage: Image.asset('assets/img/bankimg2.png')),
          CardaddTransactionScreenwidget(name: "بهرام صادقی", cardNum: "6104  ****  ****  7569",bankImage: Image.asset('assets/img/bankimg3.png')),
          CardaddTransactionScreenwidget(name: "والا اطمینان باصری", cardNum: "6274  ****  ****  2517",bankImage: Image.asset('assets/img/bankimg4.png')),
          TextInputWidget(),
          SizedBox(height: 10,)
        ],
        
      ),
      
    );
  }
}
