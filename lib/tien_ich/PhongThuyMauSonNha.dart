import 'package:cdmg/view/TitleBar.dart';

import 'package:cdmg/view/OptionText.dart';
import 'package:flutter/material.dart';

class PhongThuyMauSonNha extends StatefulWidget {
  const PhongThuyMauSonNha({super.key});

  @override
  State<StatefulWidget> createState() => _phongThuyMauSonNha();
}

class _phongThuyMauSonNha extends State<PhongThuyMauSonNha> {
  onPressTinhLai() {
    setState(() {});
  }

  cbNamSinh(itemSelected) {
    setState(() {
      _namSinh = itemSelected;
    });
  }

  String _namSinh = "";

  List<String> namSinhList = ["1994", "1995"];

  Color primaryColor = Color(0xFF005BA0);
  String gioiTinh = "Nam";
  String huongNha = "Đông";
  @override
  Widget build(BuildContext context) {
    const appTitle = "Phong thủy màu sơn nhà";
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
                OptionText(
                    title: 'Năm sinh của bạn',
                    titleSelectOption: "Năm sinh của bạn",
                    datas: namSinhList,
                    callbackFunction: cbNamSinh,
                    selected: _namSinh,
                    isRequired: true),
                SizedBox(height: 16),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: onPressTinhLai,
                        child: const Text(
                          "Xem kết quả",
                          style: TextStyle(fontSize: 16),
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(primaryColor),
                        ))),
              ],
            )),
          ),
        )));
  }
}
