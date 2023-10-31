import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../config/routes.dart';
import '../app_assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, bottom: 16),
      child: Row(
        children: [
          Image.asset(
            AppAssets.appLogoImage,
            fit: BoxFit.contain,
            height: 18.1,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(Routes.searchRoute);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 26,
            ),
          ),
        ],
      ),
    );
  }
}
