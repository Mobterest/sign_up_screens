import 'package:flutter/material.dart';
import '../global/colors.dart';

/// *  textInputType - The type of information for which to optimize the text input control.
/// *  labelText - Text that suggests what sort of input the field accepts.
/// *  obscureText - Is Password field?
/// *  controller - Text controller

class CustomTextField extends StatefulWidget {
  final TextInputType textInputType;
  final String label;
  final bool obScure;
  final TextEditingController controller;
  final IconData icon;

  CustomTextField(
      this.textInputType, this.label, this.obScure, this.controller, this.icon);
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 20),
        child: TextField(
          controller: widget.controller,
          cursorColor: brandColor,
          obscureText: widget.obScure,
          keyboardType: widget.textInputType,
          decoration: InputDecoration(
              suffix: Icon(
                widget.icon,
                size: 17,
                color: brandColor,
              ),
              border:
                  OutlineInputBorder(borderSide: BorderSide(color: brandColor)),
              labelText: widget.label,
              labelStyle: TextStyle(
                  color: brandColor, fontSize: 11, fontWeight: FontWeight.bold),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: brandColor),
              )),
        ));
  }

  void changeFocus(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}
