import 'package:flutter/material.dart';

class CsAssetImage extends StatelessWidget {
  final String imageUrl;

  const CsAssetImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(imageUrl),
      fit: BoxFit.cover,
    );
  }
}

//write a unit test to test appbar in flutter?