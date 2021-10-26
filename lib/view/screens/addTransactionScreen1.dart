import 'package:blubank/view/widgets/appBar_widget.dart';
import 'package:blubank/view/widgets/card_addTransactionScreen_widget.dart';
import 'package:blubank/view/widgets/floatingAction.dart';
import 'package:flutter/material.dart';

class AddTransactionScreen extends StatefulWidget {
  @override
  AddTransactionScreenstate createState() => AddTransactionScreenstate();
}

class AddTransactionScreenstate extends State<AddTransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: " انتقال ",
      ),
      floatingActionButton: FloationActionAdd(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20, bottom: 20),
              child: Text(
                "انتقال ها",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  CardaddTransactionScreenwidget(
                    name: "احسان شباکی",
                    cardNum: "6393  ****  ****  4027",
                    bankImage: 'assets/img/bankimg1.png',
                  ),
                  CardaddTransactionScreenwidget(
                    name: "کریم اسد الهی",
                    cardNum: "6362  ****  ****  5173",
                    bankImage: 'assets/img/bankimg2.png',
                  ),
                  CardaddTransactionScreenwidget(
                    name: "بهرام صادقی",
                    cardNum: "6104  ****  ****  7569",
                    bankImage: 'assets/img/bankimg3.png',
                  ),
                  CardaddTransactionScreenwidget(
                    name: "والا اطمینان باصری",
                    cardNum: "6274  ****  ****  2517",
                    bankImage: 'assets/img/bankimg4.png',
                  ),
                  CardaddTransactionScreenwidget(
                    name: "والا اطمینان باصری",
                    cardNum: "6274  ****  ****  2517",
                    bankImage: 'assets/img/bankimg4.png',
                  ),
                  CardaddTransactionScreenwidget(
                    name: "والا اطمینان باصری",
                    cardNum: "6274  ****  ****  2517",
                    bankImage: 'assets/img/bankimg4.png',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Stack(
//         children: [
//           ListView(
//             children: [
//               CardaddTransactionScreenwidget(
//                 name: "احسان شباکی",
//                 cardNum: "6393  ****  ****  4027",
//                 bankImage: 'assets/img/bankimg1.png',
//               ),
//               CardaddTransactionScreenwidget(
//                 name: "کریم اسد الهی",
//                 cardNum: "6362  ****  ****  5173",
//                 bankImage: 'assets/img/bankimg2.png',
//               ),
//               CardaddTransactionScreenwidget(
//                 name: "بهرام صادقی",
//                 cardNum: "6104  ****  ****  7569",
//                 bankImage: 'assets/img/bankimg3.png',
//               ),
//               CardaddTransactionScreenwidget(
//                 name: "والا اطمینان باصری",
//                 cardNum: "6274  ****  ****  2517",
//                 bankImage: 'assets/img/bankimg4.png',
//               ),
//               CardaddTransactionScreenwidget(
//                 name: "والا اطمینان باصری",
//                 cardNum: "6274  ****  ****  2517",
//                 bankImage: 'assets/img/bankimg4.png',
//               ),
//               CardaddTransactionScreenwidget(
//                 name: "والا اطمینان باصری",
//                 cardNum: "6274  ****  ****  2517",
//                 bankImage: 'assets/img/bankimg4.png',
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//             ],
//           ),
//         ],
//       ),