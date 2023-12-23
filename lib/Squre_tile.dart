import 'package:flutter/material.dart';

class SqureTile extends StatelessWidget {
  final String imagePath;
  const SqureTile({super.key,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
        child : Image.asset(imagePath,scale: 12,)
    );
  }
}
