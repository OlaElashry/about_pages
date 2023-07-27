import 'package:about_page/about.dart';
import 'package:about_page/about_team.dart';
import 'package:about_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AboutPage());
}

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}