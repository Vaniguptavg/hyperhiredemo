import 'package:flutter/material.dart';
import 'package:hyper_hire_demo/utils/app_colors.dart';
import 'package:hyper_hire_demo/widgets/custom_text.dart';

///
/// Created by Varnica Gupta on 27/02/25
///

class CustomDropDown extends StatefulWidget {
  final List<String> items;
  final Function? onChanged;
  final String? hint;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final Color? arrowColor;
  final double? radius;
  final double? height;

  const CustomDropDown({
    required this.items,
    required this.onChanged,
    this.hint,
    this.backgroundColor,
    this.borderColor,
    this.textColor,
    this.arrowColor,
    this.radius,
    this.height = 34,
    super.key,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String? selectedValue;

  // Holds the current selected value
  List<String> items = [];

  @override
  void initState() {
    items = widget.items;
    if (widget.hint == null) {
      selectedValue = items[0];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric( horizontal: 5),
      height: widget.height,
      width: 60,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(widget.radius ?? 4)),
        border: Border.all(color: widget.borderColor??AppColors.color868686,)
      ),
      child: DropdownButton<String>(
        hint: widget.hint != null
            ? CustomText(
                title: widget.hint ?? '-Select-',
                color: widget.textColor ?? AppColors.color868686,
                size: 12,
              )
            : null,
        underline: const SizedBox.shrink(),
        value: selectedValue,
        borderRadius: const BorderRadius.all(Radius.circular(4)),
        dropdownColor: widget.backgroundColor,
        icon: Icon(
          Icons.arrow_drop_down,
          color: widget.arrowColor ?? (widget.textColor ?? AppColors.color868686),
          size: 14,
        ),
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: CustomText(
              title: item,
              color: widget.textColor ?? AppColors.color868686,
              size: 10,
              weight: FontWeight.w600,
            ),
          );
        }).toList(),
        onChanged: widget.onChanged != null
            ? (String? newValue) {
                setState(() {
                  selectedValue = newValue;
                });
                if (widget.onChanged != null) {
                  widget.onChanged!(selectedValue);
                }
              }
            : null,
          isExpanded: true
      ),
    );
  }
}