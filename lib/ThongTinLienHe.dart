import 'package:cdmg/model/ThongTinLienHeModle.dart';
import 'package:cdmg/view/InputWithDescribe.dart';
import 'package:cdmg/view/OptionText.dart';
import 'package:flutter/material.dart';

class ThongTinLienHe extends StatefulWidget {
  const ThongTinLienHe({super.key});

  @override
  _thongTinLienHe createState() => _thongTinLienHe();
}

class _thongTinLienHe extends State<ThongTinLienHe> {
  int tieudelength = 0;
  int tongTien = 0;
  TextStyle styleTitle =
      const TextStyle(fontSize: 14, color: Color(0xFF666666));
  final ThongTinLienHeModel _thongTinLienHeModel = ThongTinLienHeModel();

  cbLoaiTin(itemSelected) {
    setState(() {
      _thongTinLienHeModel.loaiTin = itemSelected;
    });
  }

  cbSoTuanDang(itemSelected) {
    setState(() {
      _thongTinLienHeModel.soTuanDang = itemSelected;
    });
  }

  pressThemHinhAnh() {}
  pressPlus() {}

  final List<String> loaiTins = <String>[
    'Miễn phí',
    'Vip',
    '3 sao',
  ];

  final List<String> soTuanDangs = <String>[
    '1 tuần',
    '2 tuần',
    '4 tuần',
    '2 tháng'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputWithDescribe(label: "Họ Tên", describe: "", hideDescribe: true),
        InputWithDescribe(label: "Địa chỉ", describe: "", hideDescribe: true),
        InputWithDescribe(
            label: "Số điện thoại", describe: "", hideDescribe: true),
        InputWithDescribe(label: "Email", describe: "", hideDescribe: true),
        const Padding(
          padding: EdgeInsets.only(top: 20, bottom: 10),
          child: Text("THÔNG TIN THANH TOÁN",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF222222),
                  decoration: TextDecoration.underline)),
        ),
        OptionText(
            title: "Loại tin",
            titleSelectOption: "Chọn loại tin",
            datas: loaiTins,
            callbackFunction: cbLoaiTin,
            selected: _thongTinLienHeModel.loaiTin,
            isRequired: true),
        OptionText(
          title: "Số tuần đăng",
          titleSelectOption: "Số tuần đăng",
          datas: soTuanDangs,
          callbackFunction: cbSoTuanDang,
          selected: _thongTinLienHeModel.soTuanDang,
          isRequired: true,
        ),
        Text("7 ngày tin thử nghiệm", style: styleTitle),
        Text("Ngày bắt đầu: 10-08-2022", style: styleTitle),
        Text("Ngày bắt đầu: 17-08-2022", style: styleTitle),
      ],
    );
  }
}
