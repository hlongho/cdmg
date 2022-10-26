import 'package:cdmg/view/TitleBar.dart';
import 'package:cdmg/view/InputWithDescribe.dart';
import 'package:cdmg/view/OptionText.dart';
import 'package:cdmg/model/ThongTinCoBanModel.dart';
import 'package:flutter/material.dart';

class CanThueMua extends StatelessWidget {
  CanThueMua({super.key});

  final ThongTinCoBanModel _thongTinCoBanModel = ThongTinCoBanModel();

  final List<String> loaiBDSs = <String>[
    'Nhà bán',
    'Đất bán',
    'Cho Thuê',
    'Cần Thuê',
    'Cần mua',
  ];
  final List<String> tinhThanhPhos = <String>[
    'Hồ Chí Minh',
    'Hà Nội',
    'Đà Nẵng',
    'Bình Dương',
    'Đồng Nai',
    'Khánh Hòa',
    'Hải Phòng'
  ];
  final List<String> quanHuyens = <String>[
    'Quận 1',
    'Quận 2',
    'Quận 3',
    'Quận 4',
    'Quận 5',
    'Quận 6',
    'Quận 7'
  ];

  Color primaryColor = Color(0xFF005BA0);

  @override
  Widget build(BuildContext context) {
    const appTitle = "Thông tin cơ bản";
    return MaterialApp(
        title: appTitle,
        theme: ThemeData(fontFamily: 'Montserrat'),
        home: Scaffold(
            body: SafeArea(
                child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16),
                    child: Column(children: [
                      Expanded(
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
                              title: 'Loại bất động sản',
                              titleSelectOption: 'Chọn loại bất động sản',
                              datas: loaiBDSs,
                              callbackFunction: (itemSelected) {
                                _thongTinCoBanModel.loaiBatDongSan =
                                    itemSelected;
                              },
                              selected: _thongTinCoBanModel.loaiBatDongSan,
                              isRequired: true,
                            ),
                            OptionText(
                                title: "Tỉnh/Thành phố",
                                titleSelectOption: "Chọn Tỉnh/Thành phố",
                                datas: tinhThanhPhos,
                                callbackFunction: (itemSelected) {
                                  _thongTinCoBanModel.tinhThanhPho =
                                      itemSelected;
                                },
                                selected: _thongTinCoBanModel.tinhThanhPho,
                                isRequired: true),
                            OptionText(
                                title: "Quận/Huyện",
                                titleSelectOption: "Chọn Quận/Huyện",
                                datas: quanHuyens,
                                callbackFunction: (itemSelected) {
                                  _thongTinCoBanModel.quanHuyen = itemSelected;
                                },
                                selected: _thongTinCoBanModel.quanHuyen,
                                isRequired: true),
                            InputWithDescribe(
                              label: 'Tiêu đề tin',
                              describe: 'Tối đa 100 ký tự',
                              hideDescribe: true,
                            ),
                            InputWithDescribe(
                              label: 'Nội dung mô tả',
                              describe: 'Tối đa 3000 ký tự',
                              hideDescribe: true,
                            ),
                            InputWithDescribe(
                                label: "Họ Tên",
                                describe: "",
                                hideDescribe: true),
                            InputWithDescribe(
                                label: "Địa chỉ",
                                describe: "",
                                hideDescribe: true),
                            InputWithDescribe(
                                label: "Số điện thoại",
                                describe: "",
                                hideDescribe: true),
                            InputWithDescribe(
                                label: "Email",
                                describe: "",
                                hideDescribe: true),
                          ],
                        )),
                      ),
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 12),
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Đăng tin"),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(primaryColor),
                              )))
                    ])))));
  }
}
