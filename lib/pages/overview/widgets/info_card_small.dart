import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/custom_text.dart';

import '../../../constants/styles.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final bool isActive;
  final Function() onTap;

  const InfoCardSmall(
      {super.key,
      required this.title,
      required this.value,
      this.isActive = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: isActive ? active : lightGrey, width: .5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                size: 24,
                weight: FontWeight.w300,
                color: isActive ? active : lightGrey,
              ),
              CustomText(
                text: value,
                size: 24,
                weight: FontWeight.bold,
                color: isActive ? active : lightGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
