import 'package:flutter/material.dart';
import 'package:flutter_web/constants/controllers.dart';
import 'package:flutter_web/helpers/responsiveness.dart';
import 'package:flutter_web/pages/overview/widgets/available_drivers.dart';
import 'package:flutter_web/pages/overview/widgets/overview_cards_large.dart';
import 'package:flutter_web/pages/overview/widgets/overview_cards_medium.dart';
import 'package:flutter_web/pages/overview/widgets/overview_cards_small.dart';
import 'package:flutter_web/pages/overview/widgets/revenue_section_large.dart';
import 'package:flutter_web/pages/overview/widgets/revenue_section_small.dart';
import 'package:flutter_web/widgets/custom_text.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({super.key});

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
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomScreen(context))
                OverviewCardMediumScreen()
              else
                OverviewCardLargeScreen()
            else
              OverviewCardsSmallScreen(),
            if (!ResponsiveWidget.isSmallScreen(context))
              RevenueSectionLarge()
            else
              RevenueSectionSmall(),
            AvailableDriversTable()
          ],
        )),
      ],
    );
  }
}
