import 'package:document_model/screens/documents/enter_document_details_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
              InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => EnterDocumentDetailsScreen(),
                    ));
                  },
                  child: SvgPicture.asset(svgIcon)),
              Text(title,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0XFFF7F6F5),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
