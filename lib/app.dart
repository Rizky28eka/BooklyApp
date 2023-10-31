import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'config/routes.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        appBarTheme: AppBarTheme(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
