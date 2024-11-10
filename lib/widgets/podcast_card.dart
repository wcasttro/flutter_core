import 'package:core/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class PodCastCard extends StatelessWidget {
  final String path;
  final void Function()? onTap;

  const PodCastCard({required this.path, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 120,
        width: 120,
        child: Card(
          child: CustomImage(
            path: path,
            isNetWork: true,
          ),
        ),
      ),
    );
  }
}
