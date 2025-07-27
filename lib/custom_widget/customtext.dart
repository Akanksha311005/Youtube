import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final String subtitle;
  final double? fontSize;

  const CustomText({
    super.key,
    required this.title,
    required this.subtitle,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final double calculatedFontSize = fontSize ?? screenWidth * 0.045;
    final double verticalSpacing = screenHeight * 0.005;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: verticalSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: calculatedFontSize,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: verticalSpacing),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey,
              fontSize: screenWidth * 0.035,
            ),
          ),
        ],
      ),
    );
  }
}
