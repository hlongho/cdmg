import 'package:cdmg/view/TitleBar.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:flutter/material.dart';

class HuongDanDangTin extends StatelessWidget {
  HuongDanDangTin({super.key});

  Color primaryColor = Color(0xFF005BA0);
  @override
  Widget build(BuildContext context) {
    const appTitle = "Hướng dẫn đăng tin";
    return MaterialApp(
        title: appTitle,
        theme: ThemeData(fontFamily: 'Montserrat'),
        color: primaryColor,
        home: Scaffold(
            body: SafeArea(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleBar(
                    title: appTitle,
                    callbackFunction: () {
                      Navigator.pop(context);
                    }),
                WebView(
                  initialUrl: 'https://api.cafeland.vn/api/app_get_tinh_thanh',
                )
              ],
            )),
          ),
        )));
  }
}
