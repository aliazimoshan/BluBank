import 'package:flutter/material.dart';

class CardTransactionList extends StatelessWidget {
  const CardTransactionList(
      {Key? key,
      required this.title,
      this.greyicon,
      required this.datetime,
      required this.fee})
      : super(key: key);
  final String? title;
  final IconData? greyicon;
  final String? datetime;
  final String? fee;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          ListTile(
            title: Text(
              title ?? "",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            leading: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(
                    greyicon,
                    color: Colors.blueGrey[500],
                    size: 22,
                  ),
                )),
            trailing: Text(fee ?? "ریال" + ""),
            subtitle: Text(
              datetime ?? "",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
