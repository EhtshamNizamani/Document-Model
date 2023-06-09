import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
            width: 2, color: const Color.fromARGB(14, 255, 255, 255)),
        color: const Color.fromARGB(35, 255, 255, 255),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset('assets/images/three-dots.svg')),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset('assets/images/document-text.svg'),
              const SizedBox(width: 15),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('E-VISA',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color(0XFFF7F6F5),
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )),
                  Text('Document Number',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color(0XFFF7F6F5),
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      )),
                  Text('Issued Date',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color(0XFFF7F6F5),
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      )),
                  Text('Expiry Date',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color(0XFFF7F6F5),
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      )),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ACG00-14072-46232',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color(0XFFF7F6F5),
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      )),
                  Text('02/04/23',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color(0XFFF7F6F5),
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      )),
                  Text('02/04/27',
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Color(0XFFF7F6F5),
                            fontSize: 10,
                            fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
