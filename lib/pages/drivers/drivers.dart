import 'package:flutter/material.dart';
import 'package:flutter_web/pages/drivers/widgets/drivers_table.dart';
import 'package:flutter_web/widgets/custom_text.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../constants/controllers.dart';
import '../../helpers/responsiveness.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(children: [
            Container(
              margin: EdgeInsets.only(
                top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6,
              ),
              child: CustomText(
                text: menuController.activeItem.value,
                size: 24,
                weight: FontWeight.bold,
              ),
            )
          ]),
        ),
        Expanded(
            child: ListView(
          children: [DriversTable()],
        ))
      ],
    );
  }
}
