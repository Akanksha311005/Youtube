import 'package:flutter/material.dart';

class ShortsContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final String img;

  const ShortsContainer({
    super.key,
    this.height,
    this.width,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width;
     final containerWidth = width ?? screenWidth * 0.4; // 40% of screen
    final containerHeight = height ?? containerWidth * 1.6; // Tall ratio

    return Container(
      height:containerHeight ,
      width: containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
