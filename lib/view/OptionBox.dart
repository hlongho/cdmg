import 'package:flutter/material.dart';

class OptionBox extends StatefulWidget {
  final String title;
  final String titleSelectOption;
  final List<String> datas;
  String selected;
  final bool isRequired;
  final Function callbackFunction;
  OptionBox(
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
  State<StatefulWidget> createState() => _optionBox();
}

class _optionBox extends State<OptionBox> {
  @override
  Widget build(BuildContext context) {
    List<String> searchList = widget.datas;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: widget.selected.isNotEmpty,
          maintainState: true,
          maintainAnimation: true,
          maintainSize: true,
          child: Text(
            widget.title,
            style: widget.styleTitle,
          ),
        ),
        GestureDetector(
          child: AbsorbPointer(
              child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFE0E0E0), width: 1),
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                  text: widget.selected.isNotEmpty
                      ? widget.selected
                      : widget.titleSelectOption,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(
                          widget.selected.isEmpty ? 0xFF666666 : 0xFF222222),
                      fontFamily: 'Montserrat'),
                )),
                Image.asset(
                  'assets/images/down.png',
                  height: 9,
                  width: 12,
                ),
              ],
            ),
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
                return FractionallySizedBox(
                    heightFactor: 0.9,
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
                            height: MediaQuery.of(context).size.height * 0.88,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(10),
                                  child: TextField(
                                      style:
                                          TextStyle(color: Color(0xFF222222)),
                                      scrollPadding: const EdgeInsets.all(4),
                                      decoration: InputDecoration(
                                        isDense: true,
                                        contentPadding:
                                            EdgeInsets.only(top: 4, bottom: 4),
                                        labelStyle: TextStyle(
                                            fontSize: 14.0,
                                            color: Color(0xFF666666)),
                                        labelText: "Tìm...",
                                      ),
                                      onChanged: (value) {
                                        setState(() {
                                          if (value.length == 0) {
                                            searchList = widget.datas;
                                          } else {
                                            searchList.length = 0;
                                            searchList = widget.datas
                                                .where((item) =>
                                                    item.contains(value))
                                                .toList();
                                          }
                                        });
                                      }),
                                ),
                                Expanded(
                                  child: ListView.separated(
                                    padding: const EdgeInsets.all(8),
                                    itemCount: searchList.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            widget.selected = searchList[index];
                                          });
                                          Navigator.pop(context);
                                          widget.callbackFunction(
                                              searchList[index]);
                                        },
                                        child: Container(
                                            padding: const EdgeInsets.all(4),
                                            child: Text(searchList[index])),
                                      );
                                    },
                                    separatorBuilder:
                                        (BuildContext context, int index) =>
                                            const Divider(),
                                  ),
                                )
                              ],
                            ))
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
