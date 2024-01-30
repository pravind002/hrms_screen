import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final String label;
  final List<String> dropdownItems;
  final Function(String)? onChanged;
  String? selectedValue;
  CustomDropDown(
      {super.key,
      required this.label,
      required this.dropdownItems,
      this.onChanged,
      this.selectedValue});

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      shadowColor: Colors.black,
      child: DropdownButtonFormField<String>(
        value: widget.selectedValue,
        items: [
          // Add a null item to the list
          const DropdownMenuItem<String>(
            value: null,
            child: SizedBox.shrink(),
          ),
          ...widget.dropdownItems.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }),
        ],
        onChanged: (String? newValue) {
          setState(() {
            widget.selectedValue = newValue;
            if (widget.onChanged != null) {
              widget.onChanged!(newValue!);
            }
          });
        },
        decoration: InputDecoration(
          label: Text(
            widget.label,
            style: const TextStyle(color: Color(0xff707070)),
          ),
          // suffixIcon:widget.,
          fillColor: const Color(0xffF6F6F9),
          filled: true,
          isDense: true,
          enabledBorder: border(),
          focusedBorder: border(),
          disabledBorder: border(),
          errorBorder: border(),
          focusedErrorBorder: border(),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder border() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xff707070)),
        borderRadius: BorderRadius.circular(14));
  }
}
