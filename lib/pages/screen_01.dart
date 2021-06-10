import 'package:flutter/material.dart';
import 'package:sign_up_screen/global/colors.dart';
import '../widgets/textfield.dart';

class ScreenA extends StatefulWidget {
  @override
  _ScreenAState createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  final TextEditingController _controller = new TextEditingController();
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(top: 25, left: 20, right: 20),
                    child: Flex(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      direction: Axis.vertical,
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Hello there,",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 10),
                        Text(
                            "To start, please fill in some information for us."),
                        SizedBox(height: 30),
                        CustomTextField(TextInputType.text, "NAME", false,
                            _controller, Icons.person),
                        CustomTextField(TextInputType.emailAddress, "EMAIL",
                            false, _controller, Icons.email),
                        CustomTextField(TextInputType.text, "HOME ADDRESS",
                            false, _controller, Icons.home),
                        CustomTextField(TextInputType.datetime, "DATE OF BIRTH",
                            false, _controller, Icons.calendar_today),
                        CustomTextField(TextInputType.visiblePassword,
                            "PASSWORD", true, _controller, Icons.lock),
                        CheckboxListTile(
                          title: RichText(
                            text: TextSpan(
                              text: 'I have read the  ',
                              style: TextStyle(fontSize: 12, color: brandColor),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: 'terms and conditions',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline)),
                              ],
                            ),
                          ),
                          value: checked,
                          onChanged: (value) {},
                        ),
                        Align(
                            alignment: FractionalOffset.bottomRight,
                            child: ClipOval(
                              child: Material(
                                color: brandColor,
                                child: InkWell(
                                  onTap: () {},
                                  child: SizedBox(
                                      width: 56,
                                      height: 56,
                                      child: Icon(
                                        Icons.keyboard_arrow_right_outlined,
                                        color: lightColor,
                                      )),
                                ),
                              ),
                            ))
                      ],
                    )))));
  }
}
