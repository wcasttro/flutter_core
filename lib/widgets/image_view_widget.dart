import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageViewWidget extends StatefulWidget {
  final String path;
  final double? width;
  final double? height;
  final String? package;
  final Color? color;
  const ImageViewWidget({
    required this.path,
    super.key,
    this.height,
    this.width,
    this.color,
    this.package = 'components',
  });

  @override
  State<ImageViewWidget> createState() => _ImageViewWidgetState();
}

class _ImageViewWidgetState extends State<ImageViewWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.path.contains('.svg')) {
      return SvgPicture.asset(
        widget.path,
        height: widget.height,
        width: widget.width,
        package: widget.package,
        colorFilter: widget.color != null
            ? ColorFilter.mode(widget.color!, BlendMode.srcIn)
            : null,
      );
    } else {
      return Image.asset(
        widget.path,
        height: widget.height,
        width: widget.width,
        package: widget.package,
      );
    }
  }
}
