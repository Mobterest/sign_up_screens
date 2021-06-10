import 'package:flutter/material.dart';
import '../global/colors.dart';

class CustomButton extends StatefulWidget {
  final String label;
  final double width;
  final Function onSubmit;
  CustomButton(this.label, this.width, this.onSubmit);
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * widget.width,
        height: MediaQuery.of(context).size.height * 0.07,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(brandColor)),
            onPressed: (widget.onSubmit != null) ? widget.onSubmit : null,
            child: Text(widget.label)));
  }
}
