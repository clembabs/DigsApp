import 'package:digs/presentation/assets/svg.dart';
import 'package:digs/presentation/theme/app_theme.dart';
import 'package:digs/presentation/utils/platform_svg.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget _buildHeader(dynamic context) => Stack(
        children: <Widget>[
          Container(color: AppTheme().primaryColorLight),
          Align(
            alignment: Alignment.topLeft,
            child: PlatformSvg.asset(X_ICON_SVG),
          ),
          Center(child: PlatformSvg.asset(DIGS_LOGO_ICON_SVG)),
        ],
      );

  Widget _buildForm() => Column(
        children: <Widget>[
          Text('Welcome Back!',
              style: AppTheme().themeData.textTheme.headline1),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
