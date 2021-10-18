import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/view/screens/lham/profileScreen.dart';
import 'package:blubank/view/widgets/appBar_widget.dart';
import 'package:blubank/view/widgets/blucard_back.dart';
import 'package:blubank/view/widgets/blucard_front.dart';
import 'package:blubank/view/widgets/card_cartScreen_widget.dart';
import 'package:blubank/view/widgets/cartscreen_modal_widget.dart';
import 'package:blubank/view/widgets/contactModal_widget.dart';
import 'package:blubank/view/widgets/rectangleCard_homeScreen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(text: "کارت"),
      body: Container(
        width: BluDimensions.width(context),
        height: BluDimensions.height(context),
        color: Colors.white,
        padding: EdgeInsets.only(top: 25),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(right: 25, left: 25),
                    child: FlipCard(
                      fill: Fill.fillBack,
                      direction: FlipDirection.HORIZONTAL,
                      front: BlucardFront(),
                      back: BlucardBack(
                          name: "الهام صادقی",
                          col1: "6219",
                          col2: "8619",
                          col3: "0286",
                          col4: "0807",
                          date: "1403/03",
                          cvv2: "147"),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: BluDimensions.height(context) / 3,
                ),
              ],
            ),
            Cartscreenmodalwidget(),
          ],
        ),
      ),
    );
  }
}
