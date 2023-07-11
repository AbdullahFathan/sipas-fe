import 'package:flutter/material.dart';

import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';

class CustomDropDown extends StatefulWidget {
  final List<String> data;
  final String labelText;
  final String subText;
  const CustomDropDown({
    Key? key,
    required this.data,
    required this.labelText,
    required this.subText,
  }) : super(key: key);

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonFormField<String>(
            value: _selectedValue,
            onChanged: (value) {
              setState(() {
                _selectedValue = value;
              });
            },
            items: widget.data.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            decoration: InputDecoration(
              hintText: widget.labelText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 1,
                  color: borderGreyColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  width: 1,
                  color: borderGreyColor,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 4,
              left: 16,
              bottom: 16,
            ),
            child: Text(
              widget.subText,
              style: bodyMedium(
                colorFont: greyColor,
                sizeFont: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}