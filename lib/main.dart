import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/constants/styles.dart';
import 'package:flutter_web/controllers/menu_controller.dart';
import 'package:flutter_web/controllers/navigation_controller.dart';
import 'package:flutter_web/layout.dart';
import 'package:flutter_web/pages/404/error_page.dart';
import 'package:flutter_web/pages/authentication/authentication.dart';
import 'package:flutter_web/routing/routes.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AuthenticationPageRoute,
      unknownRoute: GetPage(
        name: "/not-found",
        page: () => PageNotFound(),
        transition: Transition.fadeIn,
      ),
      getPages: [
        GetPage(name: RootRoute, page: () => SiteLayout()),
        GetPage(
            name: AuthenticationPageRoute,
            page: () => const AuthenticationPage())
      ],
      debugShowCheckedModeBanner: false,
      title: "Dash",
      theme: ThemeData(
          scaffoldBackgroundColor: light,
          textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
          }),
          primaryColor: Colors.blue),
      // home: AuthenticationPage(),
    );
  }
}
