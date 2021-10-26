import 'package:blubank/constant/dimensions.dart';
import 'package:blubank/view/screens/transaction.dart';
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
  SheetController controller = SheetController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        foregroundcolor: Colors.white,
        text: "IR-۲۳۴۵۶۷۸۹۰۰۹۸۷۶۵۴۳۲۳۴۵",
        backgroundColor: BluColor.primaryColor,
        // icon: Icon(Icons.search_outlined),
      ),
      body: Stack(
        children: [
          // SheetListenerBuilder(
          //   buildWhen: (oldState, newState) =>
          //       oldState.isExpanded != newState.isExpanded,
          //   builder: (context, state) {
          //     final isExpanded = state.isExpanded;

          //     return Column(
          //       children: [
          //         Icon(
          //           !isExpanded ? Icons.list : Icons.map,
          //         ),
          //         Text(
          //           !isExpanded ? 'Steps & more' : 'Show map',
          //         ),
          //         // !isExpanded
          //         //     ? () => controller.scrollTo(state.maxScrollExtent)
          //         //     : controller.collapse,
          //         // color: Colors.white,
          //         // border: BorderSide(
          //         //   color: Colors.grey.shade400,
          //         //   width: 2,
          //         // ),
          //       ],
          //     );
          //   },
          // ),
          Container(
            padding: EdgeInsets.only(top: 40),
            height: BluDimensions.height(context),
            width: BluDimensions.width(context),
            decoration: BoxDecoration(
              color: BluColor.primaryColor,
            ),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "IR-۲۳۴۵۶۷۸۹۰۰۹۸۷۶۵۴۳۲۳۴۵",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    " ۵۴,۸۶۷,۸۹۳  ریال",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    "موجودی",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  buttomWidget(
                    title: "افزایش موجودی",
                    color: Colors.white,
                    backgroundColor: Colors.indigo[600],
                    icons: Icons.add,
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          SlidingSheet(
            elevation: 16,
            cornerRadius: 10,
            snapSpec: const SnapSpec(
              snap: true,
              snappings: [1.0, 0.6],
              initialSnap: 0.6,
              // positioning: SnapPositioning.relativeToAvailableSpace,
            ),
            headerBuilder: (context, state) {
              return InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 56,
                  width: double.infinity,
                  child: Text(
                    "تراکنش ها ",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              );
            },
            builder: (context, state) {
              return Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    CardTransactionList(
                      datetime: '1400/8/3',
                      fee: '۱۴۰۰۰' + ' ' + 'ریال',
                      title: 'خرید اینترنتی',
                      greyicon: Icons.shop,
                    ),
                    CardTransactionList(
                      datetime: '1400/8/3',
                      fee: '۱۴۰۰۰' + ' ' + 'ریال',
                      title: 'خرید اینترنتی',
                      greyicon: Icons.shop,
                    ),
                    CardTransactionList(
                      datetime: '1400/8/3',
                      fee: '10000',
                      title: 'خرید اینترنتی',
                      greyicon: Icons.shop,
                    ),
                    CardTransactionList(
                      datetime: '1400/8/3',
                      fee: '10000',
                      title: 'خرید اینترنتی',
                      greyicon: Icons.shop,
                    ),
                    CardTransactionList(
                      datetime: '1400/8/3',
                      fee: '10000',
                      title: 'خرید اینترنتی',
                      greyicon: Icons.shop,
                    ),
                    CardTransactionList(
                      datetime: '1400/8/3',
                      fee: '10000',
                      title: 'خرید اینترنتی',
                      greyicon: Icons.shop,
                    ),
                    CardTransactionList(
                      datetime: '1400/8/3',
                      fee: '10000',
                      title: 'خرید اینترنتی',
                      greyicon: Icons.shop,
                    ),
                    CardTransactionList(
                      datetime: '1400/8/3',
                      fee: '10000',
                      title: 'خرید اینترنتی',
                      greyicon: Icons.shop,
                    ),
                    CardTransactionList(
                      datetime: '1400/8/3',
                      fee: '10000',
                      title: 'خرید اینترنتی',
                      greyicon: Icons.shop,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
