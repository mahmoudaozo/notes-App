import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onsave,
    this.valadate,
    this.onChanged,
  });

  final String hint;
  final int maxLines;
  final void Function(String?)? onsave;
  final void Function(String?)? onChanged;
  final String? Function(String?)? valadate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onsave,
      validator: (value) {
        if (value?.isEmpty ?? true) return "must enter value";
      },
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          8,
        ),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ));
  }
}
