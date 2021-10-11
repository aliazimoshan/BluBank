import 'package:blubank/view/widgets/appBar_widget.dart';
import 'package:flutter/material.dart';

class RoyaScreen extends StatelessWidget {
  const RoyaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        text: "علی عظیم الشان",
      ),
    );
  }
}
