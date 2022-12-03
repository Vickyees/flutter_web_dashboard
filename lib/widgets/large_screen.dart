import 'package:flutter/material.dart';
import 'package:flutter_web/helpers/local_navigator.dart';
import 'package:flutter_web/pages/overview/widgets/available_drivers.dart';
import 'package:flutter_web/widgets/side_menu.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SideMenu()),
        Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: localNavigator(),
            )),
        // Expanded(child: AvailableDrivers()),
      ],
    );
  }
}
