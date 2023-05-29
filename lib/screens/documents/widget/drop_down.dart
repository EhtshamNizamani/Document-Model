import 'package:document_model/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropdown extends StatefulWidget {
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  List<String> _dropdownItems = ['Male', 'Female', 'Other'];
  String _selectedItem = 'Male';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.only(left: 12, right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 1, color: const Color(0xFF868685)),
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          const Icon(
            Icons.person_2_outlined,
            color: yellowish,
          ),
          const SizedBox(width: 15),
          Expanded(
            child: DropdownButton<String>(
              value: _selectedItem,
              icon: Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: SvgPicture.asset(
                    'assets/images/arrow-circle-down.svg',
                  ),
                ),
              ),
              iconSize: 24,
              elevation: 16,
              style: GoogleFonts.inter(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
              dropdownColor: Colors
                  .grey[800], // Set the background color of the dropdown menu

              underline: Container(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue!;
                });
              },
              items:
                  _dropdownItems.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: GoogleFonts.inter(),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
