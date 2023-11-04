// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

class CustomLoaderOverlay extends StatelessWidget {
  const CustomLoaderOverlay({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      useDefaultLoading: true,
      overlayColor: const Color.fromRGBO(0, 0, 0, 0.3),
      child: child,
    );
  }
}
