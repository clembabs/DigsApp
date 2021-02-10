import 'package:digs/presentation/screens/auth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:digs/presentation/assets/svg.dart';
import 'package:digs/presentation/theme/app_theme.dart';
import 'package:digs/presentation/utils/platform_svg.dart';
import 'package:digs/presentation/widgets/action_button.dart';

class OnboardingPageTwo extends StatelessWidget {
  Widget _buildDigsLogo() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Align(
            alignment: Alignment.topCenter,
            child: PlatformSvg.asset(DIGS_ICON_SVG)),
      );

  Widget _buildPicture() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Align(
            alignment: Alignment.center,
            child: PlatformSvg.asset(ONBOARD_TWO_SVG)),
      );

  Widget _buildSkipButton(dynamic context) => Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Center(
            child: ActionButton(
          width: 139,
          onTap: () => Navigator.push(
              // ignore: always_specify_types
              context, MaterialPageRoute(builder: (BuildContext context) => AuthPage())),
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Get Started',
              style: AppTheme().themeData.textTheme.bodyText1,
            ),
          ],
        )),
      );
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              _buildDigsLogo(),
              _buildPicture(),
              Spacer(),
              _buildSkipButton(context)
            ],
          ),
        ),
      );
}
