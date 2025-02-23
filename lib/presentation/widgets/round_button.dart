import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color? backgroundColor;
  final double? size;

  const RoundButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.backgroundColor,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
      child: Icon(icon, size: size ?? 100.0),
    );
  }
}
