// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widget/custom_textfield.dart';
import 'widget/document_tab_widget.dart';
import 'widget/job_detials_card.dart';
import 'widget/personal_tab_widget.dart';
import 'widget/work_tab_widget.dart';
import 'work_tab_screen.dart';

class MyTabsScreen extends StatefulWidget {
  const MyTabsScreen({super.key});

  @override
  _MyTabsScreenState createState() => _MyTabsScreenState();
}

class _MyTabsScreenState extends State<MyTabsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 30,
            child: TabBar(
              labelStyle: GoogleFonts.inter(fontWeight: FontWeight.w600),
              indicatorPadding:
                  EdgeInsets.zero, // Adjust the horizontal padding
              labelPadding: const EdgeInsets.symmetric(vertical: 0),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0XFFFFC091)), // Hide the default indicator
              controller: _tabController,
              unselectedLabelColor: const Color(0XFFF7F6F5),
              labelColor: const Color(0XFF260A2F),
              unselectedLabelStyle: GoogleFonts.inter(),
              tabs: [
                const Tab(
                  text: 'Personal',
                ),
                const Tab(text: 'Work'),
                const Tab(
                  text: 'Document',
                  iconMargin: EdgeInsets.all(0),
                ),
                Tab(
                  child: SvgPicture.asset('assets/images/arrow-right.svg'),
                )
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          // Personal Tab Content
          PersonalTabWidget(),

          // Work Tab Content
          WorkTabScreen(),

          // Document Tab Content
          DocumentTabWidget(),
          SizedBox(),
        ],
      ),
    );
  }
}
