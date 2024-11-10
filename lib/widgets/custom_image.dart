import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    required this.path,
    super.key,
    this.width,
    this.isNetWork = false,
  });

  final String path;
  final double? width;
  final bool isNetWork;

  @override
  Widget build(BuildContext context) {
    return isNetWork
        ? Image.network(path)
        : Image.asset(
            path,
            width: width,
          );
  }
}
