import 'package:flutter/material.dart';

class OptionText extends StatelessWidget {
  final String title;
  final String titleSelectOption;
  final List<String> datas;
  String selected;
  final bool isRequired;
  final Function callbackFunction;
  OptionText(
      {Key? key,
      required this.title,
      required this.titleSelectOption,
      required this.datas,
      required this.callbackFunction,
      required this.selected,
      required this.isRequired})
      : super(key: key);
  TextStyle styleTitle = const TextStyle(
      fontSize: 10, color: Color(0xFF666666), fontFamily: 'Montserrat');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: selected.isNotEmpty,
          maintainState: true,
          maintainAnimation: true,
          maintainSize: true,
          child: Text(
            title,
            style: styleTitle,
          ),
        ),
        GestureDetector(
          child: AbsorbPointer(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: RichText(
                          text: TextSpan(
                              text: selected.isNotEmpty
                                  ? selected
                                  : titleSelectOption,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(selected.isEmpty
                                      ? 0xFF666666
                                      : 0xFF222222),
                                  fontFamily: 'Montserrat'),
                              children: [
                        if (isRequired && selected.isEmpty)
                          TextSpan(
                              text: ' *', style: TextStyle(color: Colors.red)),
                      ]))),
                  Icon(Icons.keyboard_arrow_right_outlined,
                      color: Color(0xFFC4C4C4))
                ],
              ),
              Divider(
                color: Color(0xFFC4C4C4),
              )
            ],
          )),
          onTap: () {
            showModalBottomSheet<void>(
              context: context,
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
              builder: (BuildContext context) {
                return SizedBox(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                      margin: const EdgeInsets.only(bottom: 10),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: ListView.separated(
                        padding: const EdgeInsets.all(8),
                        itemCount: datas.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              selected = datas[index];
                              Navigator.pop(context);
                              callbackFunction(datas[index]);
                            },
                            child: Container(
                                padding: const EdgeInsets.all(4),
                                child: Text(datas[index])),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                      ),
                    )
                  ],
                ));
              },
            );
          },
        ),
      ],
    );
  }
}
