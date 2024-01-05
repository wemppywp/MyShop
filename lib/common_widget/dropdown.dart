import 'package:flutter/material.dart';
import 'package:myshop/common/color_extension.dart';

class Dropdown extends StatelessWidget {
  final String title;
  final String placeholder;
  final List valueList;
  final Function(Object?) didChange;
  const Dropdown(
      {super.key,
      required this.title,
      required this.placeholder,
      required this.valueList,
      required this.didChange});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: TextStyle(
              color: TColor.secondaryText,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 55,
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
                onChanged: didChange,
                icon: Icon(
                  Icons.expand_more,
                  color: TColor.textTittle,
                ),
                isExpanded: true,
                hint: Text(
                  placeholder,
                  style: TextStyle(
                      color: TColor.placeholder,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                items: valueList.map((obj) {
                  return DropdownMenuItem(
                    value: obj,
                    child: Text(
                      obj.toString(),
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  );
                }).toList()),
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 1,
          color: const Color(0xffE2E2E2),
        )
      ],
    );
  }
}
