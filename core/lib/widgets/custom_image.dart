import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    Key? key,
    required this.path,
    this.width,
    this.isNetWork = false,
  }) : super(key: key);

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
