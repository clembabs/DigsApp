import 'package:digs/presentation/theme/app_theme.dart';
import 'package:digs/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final bool autovalidate;
  final FormFieldValidator<String> validator;
  final Widget suffixWidget;
  final String formtext;
  const InputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.autovalidate,
    this.validator,
    this.controller,
    this.suffixWidget,
    this.formtext,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Text(
            widget.formtext,
            style: AppTheme().themeData.textTheme.headline3,
          ),
          SizedBox(height: 4),
          TextFieldContainer(
            child: TextFormField(
              controller: widget.controller,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              autocorrect: false,
              validator: widget.validator,
              cursorColor: AppTheme().hintColor,
              decoration: InputDecoration(
                suffix: widget.suffixWidget,
                hintText: widget.hintText,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      );
}
