import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';

const double fontSize = 15;
const double borderRadius = 60;
const double formTextFieldPadding = 16;

class MyTextFormField extends StatefulWidget {
  const MyTextFormField({
    super.key,
    this.hint,
    this.validator,
    this.controller,
    this.isPassword = false,
    this.prefixIcon,
    this.keyboardType,
    //Event Properties
    this.onChanged,
  });

  final String? hint;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final bool isPassword;
  final Icon? prefixIcon;
  final TextInputType? keyboardType;

  //Event Functions Being Passed
  final void Function()? onChanged;

  //
  @override
  State<MyTextFormField> createState() => _MyTextFormFieldState();
}

class _MyTextFormFieldState extends State<MyTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // Config
      key: widget.key,
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.isPassword,
      keyboardType: widget.keyboardType,
      //Events
      onChanged: (value) => widget.onChanged,

      // INPUT TEXT STYLE
      style: const TextStyle(
        fontSize: fontSize,
      ),
      //Decoration
      decoration: InputDecoration(
        //ERROR MESSAGE STYLE
        errorStyle: const TextStyle(
          color: Color.fromRGBO(211, 54, 83, 1),
          fontSize: 12,
        ),
        filled: true,
        fillColor: Theme.of(context).colorScheme.onBackground,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.outlineVariant,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
        // HINT STYLES
        hintText: widget.hint,
        hintStyle: const TextStyle(
          fontSize: fontSize,
          fontFamily: 'PlusJakarta',
          fontVariations: [FontVariation('wght', 500)],
        ),

        // PREFIX_ICON STYLE

        prefixIcon: (widget.prefixIcon != null) ? widthspace(60, widget.prefixIcon) : widthspace(0),
        prefix: (widget.prefixIcon != null) ? widthspace(0) : widthspace(10),
        suffix: widthspace(20),
        contentPadding: const EdgeInsets.all(formTextFieldPadding),
      ),
    );
  }
}
