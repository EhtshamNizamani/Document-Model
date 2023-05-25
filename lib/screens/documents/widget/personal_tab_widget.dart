import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_textfield.dart';

class PersonalTabWidget extends StatefulWidget {
  const PersonalTabWidget({
    super.key,
  });

  @override
  State<PersonalTabWidget> createState() => _PersonalTabWidgetState();
}

class _PersonalTabWidgetState extends State<PersonalTabWidget> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController mobileNameController = TextEditingController();
  final TextEditingController emailNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('First Name',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(fontSize: 16, color: Colors.white),
                )),
            const SizedBox(height: 8),
            const CustomTextFiled(
              iconData: Icons.person_outline_outlined,
              title: 'Enter your first name',
            ),
            const SizedBox(height: 16),
            Text('Last Name',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(fontSize: 16, color: Colors.white),
                )),
            const SizedBox(height: 8),
            const CustomTextFiled(
              iconData: Icons.person_outline_outlined,
              title: 'Enter your last name',
            ),
            const SizedBox(height: 16),
            Text(
              'Date of Birth',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 8),
            const CustomTextFiled(
              iconData: Icons.calendar_month_outlined,
              title: 'Select Date of Birth',
              suffixIcon: 'assets/images/arrow-circle-down.svg',
            ),
            const SizedBox(height: 16),
            Text(
              'Mobile',
              style: GoogleFonts.inter(
                  textStyle:
                      const TextStyle(fontSize: 16, color: Colors.white)),
            ),
            const SizedBox(height: 8),
            const CustomTextFiled(
              iconData: Icons.person_2_outlined,
              title: '+971 58 588 5325',
              textInputType: TextInputType.phone,
            ),
            const SizedBox(height: 16),
            Text(
              'Email',
              style: GoogleFonts.inter(
                  textStyle:
                      const TextStyle(fontSize: 16, color: Colors.white)),
            ),
            const SizedBox(height: 8),
            const CustomTextFiled(
              iconData: Icons.offline_bolt_outlined,
              title: 'Inez@restaurant.com',
              textInputType: TextInputType.emailAddress,
            ),
          ],
        ),
      ),
    );
  }
}
