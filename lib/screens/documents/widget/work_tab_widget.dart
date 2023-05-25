import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkTabWidget extends StatelessWidget {
  const WorkTabWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 152,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
          decoration: BoxDecoration(
              color: const Color.fromARGB(35, 255, 255, 255),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  width: 1, color: const Color.fromARGB(120, 255, 255, 255))),
          child: Column(children: [
            Text('Job details',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/office-bag.svg'),
                    const SizedBox(width: 8),
                    Text(
                      'Job title',
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 16, color: Colors.white)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 33.0),
                  child: Text(
                    'Ui/Ux Designer',
                    style: GoogleFonts.inter(
                        textStyle:
                            const TextStyle(fontSize: 16, color: Colors.white)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/buildings.svg'),
                    const SizedBox(width: 8),
                    Text('Branch',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 16, color: Colors.white),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text(
                    'Gulshan branch',
                    style: GoogleFonts.inter(
                      textStyle:
                          const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/department.svg'),
                    const SizedBox(width: 8),
                    Text('Department',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 16, color: Colors.white),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 73.0),
                  child: Text(
                    'Creatives',
                    style: GoogleFonts.inter(
                      textStyle:
                          const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ],
    );
  }
}
