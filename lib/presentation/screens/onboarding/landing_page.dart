import 'package:digs/presentation/assets/svg.dart';
import 'package:digs/presentation/theme/app_theme.dart';
import 'package:digs/presentation/utils/platform_svg.dart';
import 'package:digs/presentation/screens/onboarding/onboarding_one.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  bool _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  Future<Timer> startTime() async {
    Duration _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
        context,
        // ignore: always_specify_types
        MaterialPageRoute(
            builder: (BuildContext context) => OnboardingPageOne()));
  }

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) => Stack(
        children: <Widget>[
          Container(color: AppTheme().scaffoldBackgroundColor),
          Center(child: PlatformSvg.asset(DIGS_LOGO_ICON_SVG)),
        ],
      );
}
