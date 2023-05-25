// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widget/custom_textfield.dart';

class EnterDocumentDetailsScreen extends StatelessWidget {
  const EnterDocumentDetailsScreen({super.key});

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
                            const Text(
                              'Add document',
                              style: TextStyle(
                                  fontSize: 22, color: Color(0xFFFFC091)),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                        color: Color(0xFFFFC091),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Enter Your Details',
                        style: TextStyle(
                            color: Color(0XFFF7F6F5),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'First Name',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(height: 8),
                              const CustomTextFiled(
                                iconData: Icons.person_outline_outlined,
                                title: 'Enter your first name',
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Last Name',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(height: 8),
                              const CustomTextFiled(
                                iconData: Icons.person_outline_outlined,
                                title: 'Enter your last name',
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Date of Birth',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(height: 8),
                              const CustomTextFiled(
                                iconData: Icons.calendar_month_outlined,
                                title: 'Select Date of Birth',
                                suffixIcon:
                                    'assets/images/arrow-circle-down.svg',
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Gender',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(height: 8),
                              const CustomTextFiled(
                                iconData: Icons.person_2_outlined,
                                title: 'Select Gender',
                                suffixIcon:
                                    'assets/images/arrow-circle-down.svg',
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Nationality',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              const SizedBox(height: 8),
                              const CustomTextFiled(
                                iconData: Icons.offline_bolt_outlined,
                                title: 'Nationality',
                                suffixIcon:
                                    'assets/images/arrow-circle-down.svg',
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Center(
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Add your button click logic here
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(
                                        0xFFFFC091), // Set the color here
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 40.0, vertical: 16),
                                    child: Text(
                                      'Continue',
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Color(0xFF260A2F)),
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
                                        color: Color(0xFFFFC091),
                                        shape: BoxShape.circle),
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
                              )
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
    );
  }
}
