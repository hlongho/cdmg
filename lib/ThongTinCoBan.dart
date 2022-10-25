import 'package:cdmg/model/ThongTinCoBanModel.dart';
import 'package:cdmg/view/OptionText.dart';
import 'package:flutter/material.dart';

class ThongTinCoBan extends StatefulWidget {
  const ThongTinCoBan({super.key});

  @override
  _thongTinCoBan createState() => _thongTinCoBan();
}

class _thongTinCoBan extends State<ThongTinCoBan> {
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
  final List<String> phuongXas = <String>[
    'Phường 1',
    'Phường 2',
    'Phường 3',
    'Phường 4',
    'Phường 5',
    'Phường 6',
    'Phường 7'
  ];
  final List<String> duongPhos = <String>[
    'Đường 1',
    'Đường 2',
    'Đường 3',
    'Đường 4',
    'Đường 5',
    'Đường 6',
    'Đường 7'
  ];
  final List<String> duAns = <String>[
    'Dự án 1',
    'Dự án 2',
    'Dự án 3',
    'Dự án 4',
    'Dự án 5',
    'Dự án 6',
    'Dự án 7'
  ];

  cbLoaiBDS(itemSelected) {
    setState(() {
      _thongTinCoBanModel.loaiBatDongSan = itemSelected;
    });
  }

  cbTinhThanhPho(itemSelected) {
    setState(() {
      _thongTinCoBanModel.tinhThanhPho = itemSelected;
    });
  }

  cbQuanHuyen(itemSelected) {
    setState(() {
      _thongTinCoBanModel.quanHuyen = itemSelected;
    });
  }

  cbPhuongXa(itemSelected) {
    setState(() {
      _thongTinCoBanModel.phuongXa = itemSelected;
    });
  }

  cbDuongPho(itemSelected) {
    setState(() {
      _thongTinCoBanModel.duongPho = itemSelected;
    });
  }

  cbDuAn(itemSelected) {
    setState(() {
      _thongTinCoBanModel.duAn = itemSelected;
    });
  }

  Color primaryColor = Color(0xFF005BA0);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        OptionText(
          title: 'Loại bất động sản',
          titleSelectOption: 'Chọn loại bất động sản',
          datas: loaiBDSs,
          callbackFunction: cbLoaiBDS,
          selected: _thongTinCoBanModel.loaiBatDongSan,
          isRequired: true,
        ),
        OptionText(
            title: "Tỉnh/Thành phố",
            titleSelectOption: "Chọn Tỉnh/Thành phố",
            datas: tinhThanhPhos,
            callbackFunction: cbTinhThanhPho,
            selected: _thongTinCoBanModel.tinhThanhPho,
            isRequired: true),
        OptionText(
            title: "Quận/Huyện",
            titleSelectOption: "Chọn Quận/Huyện",
            datas: quanHuyens,
            callbackFunction: cbQuanHuyen,
            selected: _thongTinCoBanModel.quanHuyen,
            isRequired: true),
        OptionText(
            title: "Phường/Xã",
            titleSelectOption: "Chọn Phường/Xã",
            datas: phuongXas,
            callbackFunction: cbPhuongXa,
            selected: _thongTinCoBanModel.phuongXa,
            isRequired: true),
        OptionText(
            title: "Đường/Phố",
            titleSelectOption: "Chọn Đường/Phố",
            datas: duongPhos,
            callbackFunction: cbDuongPho,
            selected: _thongTinCoBanModel.duongPho,
            isRequired: false),
        OptionText(
            title: "Dự án",
            titleSelectOption: "Chọn Dự Án",
            datas: duAns,
            callbackFunction: cbDuAn,
            selected: _thongTinCoBanModel.duAn,
            isRequired: false),
        TextFormField(
          scrollPadding: const EdgeInsets.all(4),
          style: TextStyle(fontSize: 14.0, color: Color(0xFF222222)),
          decoration: const InputDecoration(
            isDense: true,
            contentPadding: EdgeInsets.only(top: 4, bottom: 4),
            labelStyle: TextStyle(fontSize: 14.0, color: Color(0xFF666666)),
            labelText: 'Địa chỉ cụ thể',
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 12),
          child: Text(
            "Vị trí trên bản đồ",
            style: TextStyle(fontSize: 14.0, color: Color(0xFF666666)),
          ),
        ),
        Container(
          height: 200,
          color: primaryColor,
        )
      ],
    );
  }
}
