import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Color color;          // Required background color
  final String img;           // Required image URL
  final String badgeText;     // Required badge text (LIVE, 12:45, etc.)

  const CustomContainer({
    super.key,
    this.height,
    this.width,
    required this.color,
    required this.img,
    required this.badgeText,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerWidth = width ?? screenWidth;
    final containerHeight = height ?? containerWidth * 9 / 16;

    return Stack(
      children: [
        Container(
          height: containerHeight,
          width: containerWidth,
          decoration: BoxDecoration(
            color: color,
            image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          right: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: badgeText.toUpperCase() == 'LIVE' ? Colors.red : Colors.black87,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (badgeText.toUpperCase() == 'LIVE') ...[
                  const Icon(Icons.podcasts, color: Colors.white, size: 16),
                  const SizedBox(width: 4),
                ],
                Text(
                  badgeText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



