import 'package:flutter/material.dart';

class CsAssetImage extends StatelessWidget {
  final String imageUrl;

  const CsAssetImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("images/sunset.jpg"),
      fit: BoxFit.cover,
    );
  }
}
