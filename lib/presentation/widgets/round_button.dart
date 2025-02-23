import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? size;

  const RoundButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.backgroundColor,
    this.iconColor,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (size ?? 100.0) * 3,
      height: (size ?? 100.0) * 3,
      child: FloatingActionButton(
        onPressed: onPressed,
        backgroundColor: backgroundColor ?? Colors.green,
        shape: const CircleBorder(),
        child: Icon(
          icon,
          size: (size ?? 100.0) * 2,
          color: iconColor ?? Colors.black,
        ),
      ),
    );
  }
}
