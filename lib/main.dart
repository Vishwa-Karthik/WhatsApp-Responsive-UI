import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/Screens/mobileScreen_layout.dart';
import 'package:whatsapp_responsive_ui/Screens/webScreen_layout.dart';
import 'package:whatsapp_responsive_ui/constants.dart';
import 'package:whatsapp_responsive_ui/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
