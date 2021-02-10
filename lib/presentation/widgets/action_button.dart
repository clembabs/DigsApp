import 'package:flutter/material.dart';
import 'package:digs/presentation/theme/app_theme.dart';

class ActionButton extends StatelessWidget {
  final List<Widget> children;
  final Color backgroundColor;
  final Color borderColor;
  final double width;
  final Function onTap;
  final MainAxisAlignment mainAxisAlignment;
  

  ActionButton({
    this.children,
    this.backgroundColor,
    this.width,
    this.borderColor,
    this.onTap, this.mainAxisAlignment,
   
  });

  @override
  Widget build(BuildContext context) => 
       GestureDetector(
          onTap: onTap ?? () {},
          child: Container(
            height: 43,
            padding: EdgeInsets.all(5),
            width: width ?? 139,
            decoration: BoxDecoration(
              color: backgroundColor ?? AppTheme().accentColor,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: borderColor ?? AppTheme().accentColor),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceBetween,
                children: children,
              ),
            ),
          ),
        );
}
