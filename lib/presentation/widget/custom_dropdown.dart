import 'package:xam/presentation/utility/constant.dart' as constants;
import 'package:flutter/material.dart';
import 'package:xam/presentation/widget/custom_text_style.dart';

class CustomDropdown extends StatefulWidget {
  final String text;
  //late final String? textValue;
  final List<String> itemList;
  const CustomDropdown({
    Key? key,
    required this.text,
    //this.textValue,
    required this.itemList,
  }) : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String? _dropDownValue;

  @override
  Widget build(BuildContext context) {
    // String? _dropDownValue;

    return DropdownButton<String>(
      isExpanded: true,
      iconSize: 27,
      itemHeight: 90,
      icon: const Icon(Icons.keyboard_arrow_down_outlined),
      underline: const Divider(thickness: 1.5, color: constants.pallet3),
      hint: _dropDownValue == null
          ? Text(widget.text, style: textStyle3(context))
          : Text(_dropDownValue!, style: textStyle3(context)),
      items: widget.itemList.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(color: Colors.black),
          ),
        );
      }).toList(),
      onChanged: (newValue) {
        setState(() {
          _dropDownValue = newValue!;
        });
      },
    );
  }
}

// https://www.youtube.com/watch?v=-eNm8pNYmjo
