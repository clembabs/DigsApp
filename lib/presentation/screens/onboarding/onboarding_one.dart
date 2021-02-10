import 'package:digs/presentation/screens/onboarding/onboarding_two.dart';
import 'package:flutter/material.dart';
import 'package:digs/presentation/assets/svg.dart';
import 'package:digs/presentation/theme/app_theme.dart';
import 'package:digs/presentation/utils/platform_svg.dart';
import 'package:digs/presentation/widgets/action_button.dart';

class OnboardingPageOne extends StatelessWidget {
  Widget _buildDigsLogo() => Padding(
    padding: const EdgeInsets.symmetric(horizontal:15.0),
    child: Align(
        alignment: Alignment.topCenter, child: PlatformSvg.asset(DIGS_ICON_SVG)),
  );

  Widget _buildPicture() => Padding(
    padding: const EdgeInsets.symmetric(horizontal:10.0),
    child: Align(
        alignment: Alignment.center, child: PlatformSvg.asset(ONBOARD_ONE_SVG)),
  );

  Widget _buildSkipButton(dynamic context) => Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
                onTap: () {}, 
                child: PlatformSvg.asset(SKIP_ICON_SVG)),
            ActionButton(
              onTap: ()  {
                // ignore: always_specify_types
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => OnboardingPageTwo()));
              },
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Next',
                  style: AppTheme().themeData.textTheme.bodyText1,
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,size: 12,
                  color: AppTheme().primaryColorLight,
                )
              ],
            )
          ],
        ),
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
