import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthFormComponent extends StatelessWidget {
  final TextEditingController controller;
  final String? formKey;
  final String hintText;
  final TextInputType textInputType;

  const AuthFormComponent({
    Key? key,
    required this.controller,
    this.formKey,
    required this.hintText,
    required this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
