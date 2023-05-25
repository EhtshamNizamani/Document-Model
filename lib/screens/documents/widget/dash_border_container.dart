import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashBorderContainer extends StatelessWidget {
  final String title;
  final String svgIcon;
  const DashBorderContainer({
    Key? key,
    required this.title,
    required this.svgIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: DottedBorder(
        color: const Color(0XFFFFC091),
        radius: const Radius.circular(10),
        strokeWidth: 1,
        dashPattern: const [4, 4, 4, 4],
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(35, 255, 255, 255),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(svgIcon),
              Text(
                title,
                style: const TextStyle(
                  color: Color(0XFFF7F6F5),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
