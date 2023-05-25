import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class JobDetailsCard extends StatelessWidget {
  const JobDetailsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 118,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
          decoration: BoxDecoration(
              color: const Color.fromARGB(35, 255, 255, 255),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                  width: 1, color: const Color.fromARGB(120, 255, 255, 255))),
          child: Column(children: [
            Text(
              'Employee details',
              style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white)),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/images/calendar.svg'),
                    const SizedBox(width: 8),
                    Text(
                      'Hiring Date',
                      style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 16, color: Colors.white)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 55.0),
                  child: Text(
                    '12 Dec 2020',
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
                    SvgPicture.asset('assets/images/watch.svg'),
                    const SizedBox(width: 8),
                    Text('Status',
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              fontSize: 16, color: Colors.white),
                        )),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 74.0),
                  child: Text(
                    'Full-Time',
                    style: GoogleFonts.inter(
                        textStyle:
                            const TextStyle(fontSize: 16, color: Colors.white)),
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
