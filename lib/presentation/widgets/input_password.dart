import 'package:digs/presentation/theme/app_theme.dart';
import 'package:digs/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';

class InputPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  const InputPasswordField({
    Key key,
    this.validator,
    this.controller,
  }) : super(key: key);

  @override
  _InputPasswordFieldState createState() => _InputPasswordFieldState();
}

class _InputPasswordFieldState extends State<InputPasswordField> {
  bool hidePass = true;

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          Text(
            'Password',
            style: AppTheme().themeData.textTheme.headline3,
          ),
          SizedBox(height: 4),
          TextFieldContainer(
            child: TextFormField(
              controller: widget.controller,
              obscureText: hidePass,
              validator: widget.validator,
              autocorrect: false,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              cursorColor: AppTheme().hintColor,
              decoration: InputDecoration(
                hintText: '',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                  ),
                  color: AppTheme().hintColor,
                  onPressed: () {
                    setState(() {
                      hidePass = !hidePass;
                    });
                  },
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      );
}
