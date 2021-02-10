import 'package:digs/presentation/screens/onboarding/landing_page.dart';
import 'package:flutter/material.dart';
import 'package:digs/presentation/screens/onboarding/onboarding_one.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DIGS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
      //  routes: <String, WidgetBuilder>{
      //     '/': (BuildContext context) => LandingPage(),
      //     '/onboard-one': (BuildContext context) => OnboardingPageOne(),
      //   }
    );
}

