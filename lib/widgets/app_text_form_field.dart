import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String label;
  final List<TextInputFormatter>? formatters;
  final TextInputType? keyboardType;
  const AppTextFormField(
      {required this.controller,
      required this.validator,
      required this.label,
      this.formatters,
      this.keyboardType,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: formatters,
      keyboardType: keyboardType,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Theme.of(context).primaryColor, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 2,
          ),
        ),
      ),
    );
  }
}
