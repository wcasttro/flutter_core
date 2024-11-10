import 'package:core/style/extensions.dart';
import 'package:core/widgets/image_view_widget.dart';
import 'package:flutter/material.dart';

class CustomBottonBar extends StatefulWidget {
  final int index;
  final Function(int)? onTap;
  final String pathImageIconKeySave;
  final String pathImageIconGenerator;

  const CustomBottonBar({
    required this.index,
    required this.onTap,
    required this.pathImageIconKeySave,
    required this.pathImageIconGenerator,
    super.key,
  });

  @override
  State<CustomBottonBar> createState() => _CustomBottonBarState();
}

class _CustomBottonBarState extends State<CustomBottonBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.index,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: ImageViewWidget(
              path: widget.pathImageIconKeySave,
              color: widget.index == 0
                  ? context.colors.neutralColors.neutralButtonColor
                  : context.colors.primaryColors.light,
            ),
          ),
          label: 'Cofre',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: ImageViewWidget(
              path: widget.pathImageIconGenerator,
              color: widget.index == 1
                  ? context.colors.neutralColors.neutralButtonColor
                  : context.colors.primaryColors.light,
            ),
          ),
          label: 'Gerador',
        ),
      ],
      elevation: 10,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      onTap: widget.onTap,
      backgroundColor: context.colors.primaryColors.main,
    );
  }
}
