import 'package:document_model/screens/documents/widget/drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFiled extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback? onTap;
  final String? suffixIcon;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  const CustomTextFiled(
      {Key? key,
      required this.title,
      required this.iconData,
      this.onTap,
      this.textInputType,
      this.controller,
      this.suffixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      style: TextStyle(
        color: Colors.white, // Set the desired text color
      ),
      decoration: InputDecoration(
        // ignore: prefer_const_constructors

        contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
        hintText: title,

        hintStyle: GoogleFonts.inter(
            textStyle: const TextStyle(color: Color(0xFFF7F6F5), fontSize: 14)),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: suffixIcon == null
              ? const SizedBox()
              : InkWell(
                  onTap: () {
                    onTap!();
                  },
                  child: SvgPicture.asset(
                    suffixIcon!,
                    color: Colors.white,
                  ),
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
