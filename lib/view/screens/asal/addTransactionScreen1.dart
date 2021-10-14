import 'package:blubank/view/widgets/appBar_widget.dart';
import 'package:blubank/view/widgets/card_addTransactionScreen_widget.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:flutter/material.dart';
class AddTransactionScreen extends StatefulWidget {
  @override
  AddTransactionScreenstate createState() => AddTransactionScreenstate();
}
class AddTransactionScreenstate extends State<AddTransactionScreen> {
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
        text: " انتقال ",
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
    body: SlidingSheet(
      elevation: 8,
      cornerRadius: 16,
      snapSpec: const SnapSpec(
        // Enable snapping. This is true by default.
        snap: true,
        // Set custom snapping points.
        snappings: [0.4, 0.7, 1.0],
        // Define to what the snappings relate to. In this case, 
        // the total available space that the sheet can expand to.
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      // The body widget will be displayed under the SlidingSheet
      // and a parallax effect can be applied to it.
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Icon(Icons.arrow_back_rounded,size: 35,color: Colors.grey[500],),
           Icon(Icons.arrow_forward_sharp,size:35,color: Colors.grey[500],)
          ],),
      ),
      builder: (context, state) {
        // This is the content of the sheet that will get
        // scrolled, if the content is bigger than the available
        // height of the sheet.
        return Container(
          height: MediaQuery.of(context).size.height-100 ,
            child:Padding(padding: EdgeInsets.all(15),
            
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20,),
                Text(" آخرین انتقال ها ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,),),
                SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height-232,
                  child: ListView(children: [
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
                  ],),
                )
               
              ],
            ),)
            
        );
      },
    ),
    );
  }
}
