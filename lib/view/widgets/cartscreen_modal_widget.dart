import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/view/widgets/button_cartScreen_widget.dart';
import 'package:blubank/view/widgets/cardSwitch_widget.dart';
import 'package:blubank/view/widgets/card_cartScreen_widget.dart';
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
      cornerRadius: 10,
      snapSpec: const SnapSpec(
        snap: true,
        snappings: [0.4, 0.8],
        positioning: SnapPositioning.relativeToAvailableSpace,
        initialSnap: 0.8,
      ),
      builder: (context, state) {
        return Container(
          color: Colors.white,
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(5),
          //   topRight: Radius.circular(5),
          // ),

          padding: EdgeInsets.all(10),
          child: Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: 40,
                  height: 4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                ),
                Row(
                  children: [
                    Buttoncartscreenwidget(
                      title: "اشتراک گذاری",
                      iconwhite: Icons.ios_share_rounded,
                    ),
                    SizedBox(width: 10),
                    Buttoncartscreenwidget(
                      title: "رمز دوم پویا",
                      iconwhite: Icons.vpn_key_rounded,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                header(
                  context,
                  title: "تنظیمات",
                ),
                CardSwitchWidget(
                  title: "مسدود سازی موقت",
                  greyicon: Icons.stop_outlined,
                ),
                SizedBox(height: 15),
                Cardcartscreenwidget(
                    whiteicon: Icons.gpp_good_rounded,
                    title: "تنظیمات امنیتی",
                    text: "تغییر و دریافت دوباره رمز بانکی"),
                SizedBox(height: 15),
                Cardcartscreenwidget(
                  whiteicon: Icons.block_rounded,
                  title: "غیرفعال کردن کارت",
                  text: "مسدود سازی کارت بانکی در صورت مفقودی و ...",
                  circlecolor: Colors.red,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
