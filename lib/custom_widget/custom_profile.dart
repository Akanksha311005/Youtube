import 'package:flutter/material.dart';

class CustomProfile extends StatelessWidget {
  final double? size;
  final String img;

  const CustomProfile({
    super.key,
    this.size = 50,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final profileSize = size ?? screenWidth * 0.15;
    return Container(
      height: profileSize,
      width: profileSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
