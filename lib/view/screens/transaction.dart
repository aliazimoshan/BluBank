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
            title: Text(title ?? ""),
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
                  ),
                )),
            trailing: Text(fee ?? ""),
            subtitle: Text(datetime ?? ""),
          ),
          Divider(),
        ],
      ),
    );
  }
}
