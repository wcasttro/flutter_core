import 'package:core/style/custom_colors.dart';
import 'package:core/style/custom_padding.dart';
import 'package:core/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class CustomPage extends StatefulWidget {
  const CustomPage({
    super.key,
    required this.body,
    this.title = '',
    this.showAppBar = false,
    this.bottomNavigationBar,
  });

  final Widget body;
  final String title;
  final bool showAppBar;
  final Widget? bottomNavigationBar;

  @override
  State<CustomPage> createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: widget.showAppBar
          ? CustomAppBar(
              title: widget.title,
            )
          : null,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: paddingVerticalPage,
          horizontal: paddingHorizontalPage,
        ),
        child: widget.body,
      ),
      bottomNavigationBar: widget.bottomNavigationBar,
    );
  }
}
