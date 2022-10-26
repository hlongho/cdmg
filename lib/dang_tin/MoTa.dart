import 'package:cdmg/model/MoTaCoBanModel.dart';
import 'package:cdmg/view/InputWithDescribe.dart';
import 'package:cdmg/view/OptionText.dart';
import 'package:cdmg/view/SubPlusValue.dart';
import 'package:flutter/material.dart';

class MoTa extends StatelessWidget {
  MoTa({super.key});

  int tongTien = 0;
  TextStyle styleTitle = const TextStyle(
      fontSize: 10, color: Colors.grey, fontFamily: 'RobotoMono');
  final MoTaCoBanModel _moTaCoBanModel = MoTaCoBanModel();

  pressThemHinhAnh() {}
  pressPlus() {}

  final List<String> donViTienTes = <String>['VND', 'USD', 'SJC'];
  final List<String> huongNhas = <String>[
    'Đông',
    'Tây',
    'Nam',
    'Bắc',
    'Đông Nam',
    'Đông Bắc',
    'Tây Nam',
    'Tây Bắc'
  ];

  Color primaryColor = Color(0xFF005BA0);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputWithDescribe(
          label: 'Tiêu đề tin',
          describe: 'Tối đa 100 ký tự',
          hideDescribe: true,
        ),
        InputWithDescribe(
          label: 'Diện tích',
          describe: 'm2',
          hideDescribe: false,
          keyboardType: TextInputType.number,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              child: InputWithDescribe(
                label: 'Giá',
                describe: '',
                hideDescribe: true,
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 6,
                ),
                OptionText(
                    title: "Đơn vị",
                    titleSelectOption: "Chọn đơn vị",
                    datas: donViTienTes,
                    callbackFunction: (itemSelected) {
                      _moTaCoBanModel.donVi = itemSelected;
                    },
                    selected: _moTaCoBanModel.donVi,
                    isRequired: true),
              ],
            ))
          ],
        ),
        Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                const Expanded(
                  child: Text("Tổng tiền"),
                ),
                Text("$tongTien d"),
              ],
            )),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.43,
          child: OutlinedButton(
            onPressed: pressThemHinhAnh,
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  "Thêm hình ảnh",
                  style: TextStyle(color: primaryColor),
                )),
                Icon(
                  Icons.add,
                  color: primaryColor,
                )
              ],
            ),
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                  width: 1.0, color: primaryColor, style: BorderStyle.solid),
            ),
          ),
        ),
        InputWithDescribe(
          label: 'Nội dung mô tả',
          describe: 'Tối đa 3000 ký tự',
          hideDescribe: true,
        ),
        const Padding(
            padding: EdgeInsets.only(top: 18, bottom: 18),
            child: Text(
              "THÔNG TIN KHÁC",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF222222),
                  decoration: TextDecoration.underline),
            )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              child: SubPlusValue(label: "Số phòng khách"),
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(child: SubPlusValue(label: "Số phòng khách"))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              child: SubPlusValue(label: "Số phòng khách"),
            ),
            const SizedBox(
              width: 16,
            ),
            Flexible(child: SubPlusValue(label: "Số phòng khách"))
          ],
        ),
        OptionText(
            title: "Hướng nhà",
            titleSelectOption: "Chọn hướng nhà",
            datas: huongNhas,
            callbackFunction: (itemSelected) {
              _moTaCoBanModel.chonHuongNha = itemSelected;
            },
            selected: _moTaCoBanModel.chonHuongNha,
            isRequired: false),
        OptionText(
            title: "Hướng ban công",
            titleSelectOption: "Chọn hướng ban công",
            datas: huongNhas,
            callbackFunction: (itemSelected) {
              _moTaCoBanModel.chonHuongBanCong = itemSelected;
            },
            selected: _moTaCoBanModel.chonHuongBanCong,
            isRequired: false),
        InputWithDescribe(
          label: 'Mô tả nội thất',
          describe: 'Tối đa 200 ký tự',
          hideDescribe: true,
        ),
        InputWithDescribe(
          label: 'Thông tin pháp lý',
          describe: 'VD: Có sổ đỏ, Có sổ hồng',
          hideDescribe: true,
        ),
      ],
    );
  }
}
