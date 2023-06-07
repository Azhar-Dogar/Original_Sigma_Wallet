import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  TextFieldWidget({Key? key,required this.hintText}) : super(key: key);
String hintText;
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration:  InputDecoration(
        hintText: widget.hintText,
        )
    );
  }
}
