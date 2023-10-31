import 'package:flutter/material.dart';
import '../../../../../core/utils/app_assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(
              AppAssets.imageTest,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
