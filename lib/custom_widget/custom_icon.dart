import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  final double? size; 
  final Color color;

  const CustomIcon({
    super.key,
    required this.icon,
    this.size,
    this.color = const Color.fromARGB(255, 244, 243, 243),
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final double iconSize = size ?? screenWidth * 0.06;

    return Icon(
      icon,
      size: iconSize,
      color: color,
    );
  }
}

