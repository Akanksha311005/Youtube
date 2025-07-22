import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double height;
  final double weight;
  final Color colors;
  final String img;
  

  const CustomContainer({
    super.key,
     this.height=250,
     this.weight=double.infinity,
     this.colors=Colors.grey,
    required this.img,
   
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: weight,
      decoration: BoxDecoration(color: colors,
      image: DecorationImage(image: NetworkImage(img),fit: BoxFit.cover),
      ),
    );
  }
}
