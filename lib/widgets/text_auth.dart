import 'package:flutter/material.dart';

class TextFieldAuth extends StatelessWidget {
  final bool pass;
  final String label;

  const TextFieldAuth({
    super.key,
    required this.pass,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      width: 325,
      height: 48,
      child: TextField(
        obscureText: pass,
        decoration: InputDecoration(
          label: Text(label),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
