import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String initialText;
  final String labelText;

  MyTextField({Key? key, required this.initialText, required this.labelText})
      : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialText);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: widget.labelText,
      ),
      onChanged: (value) {
        // No need to update widget.initialText since it's final
      },
    );
  }
}
