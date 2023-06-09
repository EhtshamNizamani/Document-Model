import 'dart:io';
import 'dart:ui';

import 'package:document_model/screens/documents/tabbar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({Key? key});

  void tackImage() async {
    final ImagePicker picker = ImagePicker();

    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      Image.file(File(pickedFile.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF260A2F),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 250,
              right: -200,
              child: Image.asset(
                'assets/images/Sales.png',
                scale: 2,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 550,
              left: -160,
              child: Image.asset(
                'assets/images/Finance.png',
                scale: 3,
                fit: BoxFit.cover,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  //header section
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(200, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0),
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter)),
                        ),
                        Positioned(
                          top: 240,
                          left: 0,
                          right: 0,
                          child: ListTile(
                            title: Text(
                              'Inez Nunez',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Color(0xFFFFC091),
                                ),
                              ),
                            ),
                            subtitle: Text(
                              'Restaurant Operations',
                              style: GoogleFonts.inter(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            trailing: InkWell(
                              onTap: () {
                                tackImage();
                              },
                              child: SvgPicture.asset(
                                'assets/images/take_pic.svg',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 13,
                          child: SvgPicture.asset(
                            'assets/images/arrow-left.svg',
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 13.0,
                    ),
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      height: MediaQuery.of(context).size.height * 0.5,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(120, 47, 46, 41),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const MyTabsScreen(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
