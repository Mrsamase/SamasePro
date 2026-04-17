import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,

          /// ✅ THEME (Dark + modern)
          theme: ThemeData(
            textTheme: GoogleFonts.soraTextTheme(),
            brightness: Brightness.dark,
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.yellow,
              brightness: Brightness.dark,
            ),
          ),

          /// ✅ FIRST SCREEN
          home: const SplashScreen(),
        );
      },
    );
  }
}
