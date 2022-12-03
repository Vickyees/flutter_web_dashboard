import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_web/pages/overview/widgets/info_card.dart';
import 'package:flutter_web/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: "Rides in progress",
            value: "7",
            isActive: true,
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Packages Delivered",
            value: "17",
            onTap: () {},
          ),
          SizedBox(
            height: _width / 64,
          ),
          InfoCardSmall(
            title: "Cancelled delivery",
            value: "3",
            // isActive: true,
            onTap: () {},
          ),
          SizedBox(
            width: _width / 64,
          ),
          InfoCardSmall(
            title: "Scheduled deliveries",
            value: "3",
            // isActive: true,
            onTap: () {},
          ),
          // SizedBox(width: _width / 64,),
        ],
      ),
    );
  }
}
