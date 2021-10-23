import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/view/screens/cartScreen.dart';
import 'package:blubank/view/screens/profileScreen.dart';
import 'package:blubank/view/widgets/button_cartScreen_widget.dart';
import 'package:blubank/view/widgets/card_cartScreen_widget.dart';
import 'package:blubank/view/widgets/contactModal_widget.dart';
import 'package:blubank/view/widgets/rectangleCard_homeScreen_widget.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class Cartscreenmodalwidget extends StatelessWidget {
  const Cartscreenmodalwidget({Key? key}) : super(key: key);

  header(BuildContext context, {String title = ''}) {
    return Container(
      width: BluDimensions.width(context),
      child: Text(
        title,
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SlidingSheet(
      elevation: 5,
      cornerRadius: 25,
      snapSpec: const SnapSpec(
        snap: true,
        snappings: [0.4, 0.5, 0.75, 1.0],
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          padding: EdgeInsets.all(25),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Buttoncartscreenwidget(
                        title: "اشتراک گذاری",
                        imgpath: "assets/img/Upload.png"),
                    SizedBox(width: 10),
                    Buttoncartscreenwidget(
                        title: "رمز دوم پویا",
                        imgpath: "assets/img/Password.png"),
                  ],
                ),
                SizedBox(height: 25),
                header(context, title: "تنظیمات"),
                SizedBox(height: 25),
                Cardcartscreenwidget(
                    whiteicon: Icons.gpp_good_rounded,
                    title: "تنظیمات امنیتی",
                    text: "تغییر و دریافت دوباره رمز بانکی"),
                SizedBox(height: 20),
                Cardcartscreenwidget(
                  whiteicon: Icons.block_rounded,
                  title: "غیرفعال کردن کارت",
                  text: "مسدود سازی کارت بانکی در صورت مفقودی و ...",
                  circlecolor: Colors.red,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
