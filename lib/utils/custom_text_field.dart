import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String lable;
  final Widget? suffixIcon;
  const CustomTextField({super.key, required this.lable, this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      shadowColor: Colors.black,
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(
            lable,
            style: const TextStyle(color: Color(0xff707070)),
          ),
          suffixIcon: suffixIcon,
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