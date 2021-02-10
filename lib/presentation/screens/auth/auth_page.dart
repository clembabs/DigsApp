import 'package:digs/presentation/assets/svg.dart';
import 'package:digs/presentation/theme/app_theme.dart';
import 'package:digs/presentation/utils/platform_svg.dart';
import 'package:digs/presentation/widgets/action_button.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  Widget _buildButton(dynamic context) => Column(
        children: <Widget>[
          ActionButton(
            onTap: () => Navigator.push(
                context,
                // ignore: always_specify_types
                MaterialPageRoute(
                    builder: (BuildContext context) => AuthPage())),
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Log In'.toUpperCase(),
                style: AppTheme().themeData.textTheme.bodyText1,
              ),
            ],
          ),
          ActionButton(
            backgroundColor: AppTheme().scaffoldBackgroundColor,
            onTap: () => Navigator.push(
                context,
                // ignore: always_specify_types
                MaterialPageRoute(
                    builder: (BuildContext context) => AuthPage())),
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sign Up'.toUpperCase(),
                style: AppTheme().themeData.textTheme.bodyText1,
              ),
            ],
          ),
        ],
      );

  Widget _buildPage(dynamic context) => Stack(
        children: <Widget>[
          Container(color: AppTheme().primaryColorLight),
          Center(
              child: Column(
            children: <Widget>[
              PlatformSvg.asset(DIGS_LOGO_ICON_SVG),
              SizedBox(width: 3),
              Text(
                'The perfect space',
                style: AppTheme().themeData.textTheme.bodyText2,
              ),
            ],
          )),
          SizedBox(height: 25),
          _buildButton(context)
        ],
      );

  @override
  Widget build(BuildContext context) => SafeArea(child: _buildPage(context));
}
