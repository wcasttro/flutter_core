import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final bool isSwitched;
  final Function(bool)? onChange;
  const CustomSwitch({
    Key? key,
    required this.isSwitched,
    required this.onChange,
  }) : super(key: key);

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Switch(
          value: widget.isSwitched,
          onChanged: widget.onChange,
          activeTrackColor: Colors.greenAccent,
          activeColor: Colors.white,
          inactiveThumbColor: Colors.white,
          inactiveTrackColor: Colors.white70,
        ),
      ),
    );
  }
}
