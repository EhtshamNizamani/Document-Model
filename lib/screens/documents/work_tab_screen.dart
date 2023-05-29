import 'package:flutter/material.dart';

import 'widget/job_detials_card.dart';
import 'widget/work_tab_widget.dart';

class WorkTabScreen extends StatelessWidget {
  const WorkTabScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          WorkTabWidget(),
          SizedBox(height: 16),
          JobDetailsCard(),
        ],
      ),
    );
  }
}
