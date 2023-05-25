import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant.dart';
import 'widget/custom_textfield.dart';

class AddDocumentScreen extends StatelessWidget {
  const AddDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF260A2F),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                bottom: 0,
                left: -160,
                child: Image.asset(
                  'assets/images/Finance.png',
                  scale: 3,
                  fit: BoxFit.cover,
                )),
            Positioned(
                bottom: 200,
                right: -200,
                child: Image.asset(
                  'assets/images/Sales.png',
                  scale: 2,
                  fit: BoxFit.cover,
                )),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                    top: 40, bottom: 35, left: 10, right: 10),
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(100, 47, 45, 41),
                    borderRadius: BorderRadius.circular(20)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/arrow-left.svg',
                            ),
                            const SizedBox(width: 60),
                            Text(
                              'Add document',
                              style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                      fontSize: 22, color: Color(0xFFFFC091))),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                        color: Color(0xFFFFC091),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Enter National ID Card  Details',
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: Color(0XFFF7F6F5),
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 8),
                              const CustomTextFiled(
                                iconData: Icons.person_outline_outlined,
                                title: 'Enter your first name',
                              ),
                              const SizedBox(height: 12),
                              const CustomTextFiled(
                                iconData: Icons.person_outline_outlined,
                                title: 'Select Expiry Date',
                              ),
                              const SizedBox(height: 12),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  UploadContainerWidget(title: 'Front Side'),
                                  UploadContainerWidget(title: 'Back Side'),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 35.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add your button click logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      const Color(0xFFFFC091), // Set the color here
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 16),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 18.0, color: Color(0xFF260A2F)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      color: Color(0xFFFFC091), shape: BoxShape.circle),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 16,
                  width: 16,
                  decoration: const BoxDecoration(
                      color: Color(0xFFFFC091), shape: BoxShape.circle),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFFFC091),
                      ),
                      shape: BoxShape.circle),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class UploadContainerWidget extends StatelessWidget {
  final String title;
  const UploadContainerWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162,
      height: 142,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
              color: const Color.fromARGB(120, 255, 255, 255), width: 1),
          color: const Color.fromARGB(35, 255, 255, 255)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.file_upload_outlined,
            color: Color(0XFFF7F6F5),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
                color: Color(0XFFF7F6F5),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: yellowish)),
            child: const Text(
              'Upload',
              style: TextStyle(color: yellowish, fontSize: 12),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            '(max: 1 MB)',
            style: TextStyle(color: Color(0XFFF7F6F5), fontSize: 12),
          ),
        ],
      ),
    );
  }
}
