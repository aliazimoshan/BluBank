import 'package:blubank/view/widgets/appBar_widget.dart';
import 'package:blubank/view/widgets/card_addTransactionScreen_widget.dart';
import 'package:blubank/view/widgets/floatingAction.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
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
        body: Stack(
          children: [
            SlidingSheet(
              elevation: 8,
              cornerRadius: 16,
              snapSpec: const SnapSpec(
                snap: true,
                snappings: [0.4, 1.0],
                positioning: SnapPositioning.relativeToAvailableSpace,
              ),
              headerBuilder: (context, state) {
                return Container(
                  padding: EdgeInsets.all(15),
                  height: 56,
                  width: double.infinity,
                  child: Text(
                    " آخرین انتقال ها ",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                );
              },
              body: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back_rounded,
                      size: 35,
                      color: Colors.grey[500],
                    ),
                    Icon(
                      Icons.arrow_forward_sharp,
                      size: 35,
                      color: Colors.grey[500],
                    )
                  ],
                ),
              ),
              builder: (context, state) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Column(
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
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ));
  }
}
