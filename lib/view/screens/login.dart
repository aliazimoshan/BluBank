import 'package:blubank/constant/colors.dart';
import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/view/widgets/button_widget.dart';
import 'package:blubank/view/widgets/textInput_widget.dart';
import 'package:flutter/material.dart';

class BluLogin extends StatelessWidget {
  const BluLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 30, bottom: 70),
                child: Image.asset(
                  'assets/img/bluLogo.png',
                  width: BluDimensions.width(context) / 4,
                ),
              ),
              Center(
                child: Text(
                  'Users name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                ),
                child: TextInputWidget(),
              ),
              buttomWidget(
                color: Colors.white,
                icons: Icons.face_unlock_outlined,
                title: 'ورود با تشخیص چهره',
              ),
              SizedBox(
                height: BluDimensions.height(context) * 0.2,
              ),
              InkWell(
                child: Center(
                  child: Text(
                    'خروج از حساب کاربری',
                    style: TextStyle(
                        color: BluColor.primaryColor,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                onTap: () {
                  // Navigator.push(context, );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Column(
            
//             children: [
//               Container(
//                 margin: EdgeInsets.only(top: 60, bottom: 60),
//                 child: Image.asset(
//                   'assets/img/bluLogo.png',
//                   width: BluDimensions.width(context) / 4,
//                 ),
//               ),
//               Text(
//                 'Users name',
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(
//                   top: 15,
//                 ),
//                 child: TextInputWidget(),
//               ),
//               buttomWidget(
//                 icons: Icons.face_outlined,
//                 title: 'ورود با تشخیص چهره',
//               ),
//               Spacer(),
//               InkWell(
//                 child: Text(
//                   'خروج از حساب کاربری',
//                   style: TextStyle(
//                       color: BluColor.primaryColor,
//                       fontWeight: FontWeight.w500),
//                 ),
//                 onTap: () {
//                   // Navigator.push(context, );
//                 },
//               ),
//               SizedBox(
//                 height: 30,
//               )
//             ],
//           ),