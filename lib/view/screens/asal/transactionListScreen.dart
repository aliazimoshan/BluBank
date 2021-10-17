import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/view/widgets/appBar_widget.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:blubank/constant/colors.dart';
import 'package:blubank/view/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class TransactionListScreen extends StatefulWidget {
  @override
  TransactionListScreenstate createState() => TransactionListScreenstate();
}

class TransactionListScreenstate extends State<TransactionListScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        foregroundcolor: Colors.white,
        text: "صورت حساب",
        backgroundColor: Colors.lightBlue.shade400,
        icon: Icon(Icons.search_outlined),
      ),
      body: SlidingSheet(
        elevation: 16,
        cornerRadius: 16,
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [1.2, 0.65],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Column(
          children: [
            Container(
              height: BluDimensions.height(context),
              width: BluDimensions.width(context),
              decoration: BoxDecoration(
                color: Colors.lightBlue[400],
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      " 135,163  ریال",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "موجودی",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    buttomWidget(
                      title: "افزایش موجودی",
                      color: Colors.white,
                      backgroundColor: BluColor.primaryColor.withOpacity(0.5),
                      icons: Icons.add,
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
        builder: (context, state) {
          return Container(
              height: BluDimensions.height(context),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "تراکنش ها ",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: BluDimensions.height(context)-200,
                      width: BluDimensions.width(context),
                      child: ListView(
                        children: [],
                      ),
                    )
                  ],
                ),
              ));
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/img/Time-Circle.png")),
            label: "",
            tooltip: "transaction",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/img/Swap.png")),
            label: "",
            tooltip: "add transaction",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/img/Home.png")),
            label: "",
            tooltip: "home",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/img/Wallet.png")),
            label: "",
            tooltip: "wallet",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/img/Profile.png")),
            tooltip: "profile",
            label: "",
          ),
        ],
      ),
    );
  }
}
