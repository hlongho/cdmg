import 'package:cdmg/ChiPhiVayVon.dart';
import 'package:cdmg/DuToanChiTietXayNha.dart';
import 'package:cdmg/DuTruVatTuXayDung.dart';
import 'package:cdmg/KhaiToanSoLuoc.dart';
import 'package:cdmg/PhongThuyMauSonNha.dart';
import 'package:cdmg/PhongThuyVanPhong.dart';
import 'package:cdmg/XemTuoiXayNha.dart';
import 'package:cdmg/XuHuongPhongThuy.dart';
import 'package:cdmg/view/OptionView.dart';
import 'package:cdmg/view/TitleBar.dart';

import 'package:flutter/material.dart';

void main() => runApp(const TienIch());

class TienIch extends StatefulWidget {
  const TienIch({super.key});

  @override
  State<StatefulWidget> createState() => _tienIch();
}

class _tienIch extends State<TienIch> {
  Color primaryColor = Color(0xFF005BA0);
  @override
  Widget build(BuildContext context) {
    const appTitle = "Tiện ích";
    return MaterialApp(
        title: appTitle,
        theme: ThemeData(fontFamily: 'Montserrat'),
        color: primaryColor,
        home: Scaffold(
            body: SafeArea(
          child: Container(
            color: Colors.white,
            height: double.infinity,
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleBar(
                    title: "Tiện ích",
                    callbackFunction: () {
                      Navigator.pop(context);
                    }),
                OptionView(
                  label: "Tính chi phí vay vốn",
                  callbackFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChiPhiVayVon()));
                  },
                ),
                OptionView(
                  label: "Định giá đất",
                  callbackFunction: () {},
                ),
                OptionView(
                  label: "Tham khảo lãi suất tiết kiệm",
                  callbackFunction: () {},
                ),
                OptionView(
                  label: "Tỷ giá",
                  callbackFunction: () {},
                ),
                OptionView(
                  label: "Dự toán chi tiết xây nhà",
                  callbackFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DuToanChiTietXayNha()));
                  },
                ),
                OptionView(
                  label: "Khai toán sơ lược xây dựng",
                  callbackFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KhaiToanSoLuocXayDung()));
                  },
                ),
                OptionView(
                  label: "Dự trù vật tư xây dựng",
                  callbackFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DuTruVatTuXayDung()));
                  },
                ),
                OptionView(
                  label: "Xu hướng phong thuỷ",
                  callbackFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => XuHuongPhongThuy()));
                  },
                ),
                OptionView(
                  label: "Xem tuổi xây nhà",
                  callbackFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => XemTuoiXayNha()));
                  },
                ),
                OptionView(
                  label: "Phong thuỷ văn phòng",
                  callbackFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhongThuyVanPhong()));
                  },
                ),
                OptionView(
                  label: "Phong thuỷ màu sơn nhà",
                  callbackFunction: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhongThuyMauSonNha()));
                  },
                ),
              ],
            )),
          ),
        )));
  }
}
