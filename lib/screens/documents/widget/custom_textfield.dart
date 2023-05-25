import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFiled extends StatelessWidget {
  final String title;
  final IconData iconData;
  final String? suffixIcon;
  const CustomTextFiled(
      {Key? key, required this.title, required this.iconData, this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        // ignore: prefer_const_constructors
        contentPadding: EdgeInsets.symmetric(vertical: 0.0),
        hintText: title,
        hintStyle: const TextStyle(color: Color(0xFFF7F6F5), fontSize: 14),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: suffixIcon == null
              ? const SizedBox()
              : SvgPicture.asset(
                  suffixIcon!,
                  color: Colors.white,
                ),
        ),
        prefixIcon: Icon(
          iconData,
          color: const Color(0xFFFFC091),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(color: Color(0xFFF7F6F5)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(color: Color(0xFF868685)),
        ),
      ),
    );
  }
}
