import 'package:flutter/material.dart';

class HomePostImageWidget extends StatelessWidget {
  final double? width;
  final double? height;
  final String image;
  const HomePostImageWidget({
    super.key,
    required this.image,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(8),
        bottomLeft: Radius.circular(8),
      ),
      child: Image.network(
        image,
        width: width ?? MediaQuery.of(context).size.width * 0.4,
        height: height ?? MediaQuery.of(context).size.width * 0.4,
        fit: BoxFit.cover,
      ),
    );
  }
}
