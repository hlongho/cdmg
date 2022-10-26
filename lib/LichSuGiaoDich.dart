import 'package:cdmg/ChiTietGiaoDich.dart';
import 'package:cdmg/model/LichSuGiaoDichModel.dart';
import 'package:cdmg/view/QuanLyTaiChinhItem.dart';
import 'package:cdmg/view/QuanLyTinDangItem.dart';
import 'package:cdmg/view/TitleBar.dart';

import 'package:flutter/material.dart';

class LichSuGiaoDich extends StatefulWidget {
  const LichSuGiaoDich({super.key});

  @override
  State<StatefulWidget> createState() => _lichSuGiaoDich();
}

class _lichSuGiaoDich extends State<LichSuGiaoDich> {
  Color primaryColor = Color(0xFF005BA0);
  TextStyle mainStyle = TextStyle(color: Color(0xFF222222), fontSize: 16);
  List giaoDichList = <LichSuGiaoDichModel>[
    LichSuGiaoDichModel(),
    LichSuGiaoDichModel(),
    LichSuGiaoDichModel(),
    LichSuGiaoDichModel(),
    LichSuGiaoDichModel(),
    LichSuGiaoDichModel(),
    LichSuGiaoDichModel(),
    LichSuGiaoDichModel(),
    LichSuGiaoDichModel(),
    LichSuGiaoDichModel(),
    LichSuGiaoDichModel(),
  ].toList();

  @override
  Widget build(BuildContext context) {
    const appTitle = "Lịch sử giao dịch";
    return MaterialApp(
        title: appTitle,
        theme: ThemeData(fontFamily: 'Montserrat'),
        color: primaryColor,
        home: Scaffold(
          body: SafeArea(
            child: Container(
                color: Colors.white,
                height: double.infinity,
                padding: EdgeInsets.only(top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: TitleBar(
                            title: appTitle,
                            callbackFunction: () {
                              Navigator.pop(context);
                            })),
                    Divider(height: 1, color: Color(0xFFE0E0E0)),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16),
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                        padding: const EdgeInsets.all(8),
                        itemCount: giaoDichList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChiTietGiaoDich(
                                          model: giaoDichList[index])));
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          giaoDichList[index].toString(),
                                          style: TextStyle(
                                              color: Color(0xFF222222),
                                              fontSize: 16),
                                        ),
                                        Text(giaoDichList[index].toString(),
                                            style: TextStyle(
                                                color: Color(0xFF999999),
                                                fontSize: 14))
                                      ],
                                    )),
                                Image.asset("assets/images/right.png",
                                    width: 6, height: 12)
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                      ),
                    ))
                  ],
                )),
          ),
        ));
  }
}
