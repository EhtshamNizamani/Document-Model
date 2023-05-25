import 'package:flutter/material.dart';

import 'dash_border_container.dart';
import 'detials_card.dart';

class DocumentTabWidget extends StatelessWidget {
  const DocumentTabWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          SizedBox(height: 10),
          DashBorderContainer(
            svgIcon: 'assets/images/add-circle.svg',
            title: 'Add Bank Account',
          ),
          SizedBox(height: 10),
          DashBorderContainer(
            svgIcon: 'assets/images/add-circle.svg',
            title: 'Add Passport',
          ),
          SizedBox(height: 10),
          DetailsCard(),
          SizedBox(height: 10),
          DetailsCard(),
        ],
      ),
    );
  }
}
