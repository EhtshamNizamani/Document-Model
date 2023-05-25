import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/profile.png'),
              fit: BoxFit.cover)),
      child: Stack(children: [
        Positioned(
            top: 20,
            left: 25,
            child: SvgPicture.asset(
              'assets/images/arrow-left.svg',
            )),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: ListTile(
            title: Text('Inez Nunez',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Color(0xFFFFC091)),
                )),
            subtitle: Text('Restaurant Operations',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white),
                )),
            trailing: SvgPicture.asset(
              'assets/images/take_pic.svg',
            ),
          ),
        )
      ]),
    );
  }
}
