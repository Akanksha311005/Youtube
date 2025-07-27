import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Color colors;
  final String img;

  const CustomContainer({
    super.key,
    this.height,
    this.width,
    this.colors = Colors.grey,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerWidth = width ?? screenWidth;
    final containerHeight = height ?? containerWidth * 9 / 16;

    return Container(
      height: containerHeight,
      width: containerWidth,
      decoration: BoxDecoration(
        color: colors,
        image: DecorationImage(image: NetworkImage(img),
         fit: BoxFit.fill),
      ),
    );
  }
}
