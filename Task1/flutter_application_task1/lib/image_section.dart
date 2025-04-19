import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  final String imageUrl;

  const ImageSection({required this.imageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      width: double.infinity,
      height: 240,
      fit: BoxFit.fitWidth,
    );
  }
}