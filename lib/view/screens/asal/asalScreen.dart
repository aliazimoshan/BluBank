import 'package:blubank/constant/colors.dart';
import 'package:blubank/view/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class AsalScreen extends StatelessWidget {
  const AsalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Asal"),
      ),
      body: Column(
        children: [
          buttomwidget(
            title: "افزایش موجودی",
            color: Colors.white,
            backgroundColor: BluColor.primaryColor.withOpacity(0.7),
            icons: Icons.add,
          ),
          buttomwidget(
            title: "ورود با تشخیص چهره",
            color: Colors.white,
            backgroundColor: BluColor.primaryColor,
            icons: Icons.face_unlock_outlined,
          ),
          buttomwidget(
            title: "اشتراک گذاری",
            color: BluColor.primaryColor,
            backgroundColor:Colors.grey[200],
            icons:( Icons.drive_folder_upload_outlined),
          ),
        ],
      ),
    );
  }
}
