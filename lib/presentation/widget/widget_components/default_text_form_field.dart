import 'package:flutter/material.dart';

import '../../../core/styles/color_theme.dart';




class DefaultFormField extends StatelessWidget {
  DefaultFormField({
    super.key,
    required this.controller,
    required this.type,
    required this.validator,
    required this.hintText,
    this.suffix,
    this.onChange,
    this.onSubmit,
    this.onTap,
    this.suffixPressed,
    required this.obscure,
  });
  TextEditingController controller;
  TextInputType type;
  ValueChanged<String>? onSubmit;
  ValueChanged<String>? onChange;
  GestureTapCallback? onTap;
  FormFieldValidator<String>? validator;
  String hintText;
  IconData? suffix;
  GestureTapCallback? suffixPressed;
  bool obscure = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: defaultFormFieldColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextFormField(
          controller: controller,
          keyboardType: type,
          onFieldSubmitted: onSubmit,
          onTap: onTap,
          onChanged: onChange,
          validator: validator,
          obscureText: obscure,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 14,fontWeight: FontWeight.normal,
            ),
            suffixIcon: suffix != null
                ? IconButton(
              onPressed: suffixPressed,
              icon: Icon(
                suffix,
                color: Theme.of(context).iconTheme.color,
              ),
            )
                : null,
          ),
        ),
      ),
    );
  }
}