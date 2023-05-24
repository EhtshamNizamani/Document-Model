// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:document_model/screens/documents/widget/header_section.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({super.key});

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
                )),
            Positioned(
                top: 550,
                left: -160,
                child: Image.asset(
                  'assets/images/Finance.png',
                  scale: 3,
                  fit: BoxFit.cover,
                )),
            //header sectin
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile.png'),
                        fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: ListTile(
                title: const Text(
                  'Inez Nunez',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Color(0xFFFFC091)),
                ),
                subtitle: const Text(
                  'Restaurant Operations',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white),
                ),
                trailing: SvgPicture.asset(
                  'assets/images/take_pic.svg',
                ),
              ),
            ),
            Positioned(
                top: 30,
                left: 25,
                child: SvgPicture.asset(
                  'assets/images/arrow-left.svg',
                )),
            //header section ended

            Positioned(
              top: 300,
              left: 0,
              right: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: MediaQuery.of(context).size.height * 0.6,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(120, 47, 46, 41),
                      borderRadius: BorderRadius.circular(20)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Personal',
                              style: TextStyle(
                                  color: Color(0XFFF7F6F5),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Text(
                              'Work',
                              style: TextStyle(
                                  color: Color(0XFFF7F6F5),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: const Color(0XFFFFC091)),
                              child: const Text(
                                'Document',
                                style: TextStyle(
                                    color: Color(0XFF260A2F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SvgPicture.asset('assets/images/arrow-right.svg'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const DashBorderContainer(
                          svgIcon: 'assets/images/add-circle.svg',
                          title: 'Add Bank Account',
                        ),
                        const SizedBox(height: 10),
                        const DashBorderContainer(
                          svgIcon: 'assets/images/add-circle.svg',
                          title: 'Add Bank Account',
                        ),
                        const SizedBox(height: 10),
                        const DetailsCard(),
                        const SizedBox(height: 10),
                        const DetailsCard(),
                      ],
                    ),
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
        color: Color.fromARGB(35, 255, 255, 255),
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
                children: const [
                  Text(
                    'E-VISA',
                    style: TextStyle(
                        color: Color(0XFFF7F6F5),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Document Number',
                    style: TextStyle(
                        color: Color(0XFFF7F6F5),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Issued Date',
                    style: TextStyle(
                        color: Color(0XFFF7F6F5),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Expiry Date',
                    style: TextStyle(
                        color: Color(0XFFF7F6F5),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'ACG00-14072-46232',
                    style: TextStyle(
                        color: Color(0XFFF7F6F5),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '02/04/23',
                    style: TextStyle(
                        color: Color(0XFFF7F6F5),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '02/04/27',
                    style: TextStyle(
                        color: Color(0XFFF7F6F5),
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
    return DottedBorder(
      color: const Color(0XFFFFC091),
      strokeWidth: 1,
      dashPattern: const [4, 4, 4, 4],
      radius: const Radius.circular(33),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(35, 255, 255, 255),
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
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
