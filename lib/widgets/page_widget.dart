import 'package:core/style/extensions.dart';
import 'package:flutter/material.dart';

class PageWidget extends StatefulWidget {
  final Widget body;
  final bool isAppBar;
  final Widget? bottomBar;
  final Widget? floatingActionButton;
  const PageWidget({
    required this.body,
    super.key,
    this.isAppBar = true,
    this.bottomBar,
    this.floatingActionButton,
  });

  @override
  State<PageWidget> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primaryColors.main,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: widget.body,
      ),
      bottomNavigationBar: widget.bottomBar,
      floatingActionButton: widget.floatingActionButton,
    );
  }
}
