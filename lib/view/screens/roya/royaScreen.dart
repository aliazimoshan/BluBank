import 'package:blubank/view/screens/HomeScreen.dart';
import 'package:blubank/view/widgets/appBar_widget.dart';
import 'package:blubank/view/widgets/cardSwitch_widget.dart';
import 'package:flutter/material.dart';

// import 'HomeScreen.dart';

class RoyaScreen extends StatefulWidget {
  @override
  _RoyaScreenState createState() => _RoyaScreenState();
}

class _RoyaScreenState extends State<RoyaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: "علی عظیم الشان",
      ),
      body: Column(
        children: [
          Container(
            child: ElevatedButton(
              child: Text('BluHomeScreen'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BluHomeScreen(),
                  ),
                );
              },
            ),
          ),
          CardSwitchScreen(
            title: 'خدمات',
            greyicon: Icons.checklist_rounded,
            subtitle: 'بهترین خدمات ممکن',
            iconColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
