import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../constant.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({super.key});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

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
            Icons.calendar_month_outlined,
            color: yellowish,
          ),
          const SizedBox(width: 15),
          Text(
            _selectedDate != null
                ? DateFormat('yyyy-MM-dd').format(_selectedDate!)
                : 'No date selected',
            style: GoogleFonts.inter(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () => _selectDate(context),
                child: SvgPicture.asset(
                  'assets/images/arrow-circle-down.svg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
