import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rio_labs/login.dart';

class EmailVerifiedPage extends StatelessWidget {
  const EmailVerifiedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0B),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon Circle
            Container(
              width: 90.w,
              height: 90.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF1F3D2B),
              ),
              child: Icon(
                Icons.thumb_up,
                color: const Color(0xFFF4C542),
                size: 40.sp,
              ),
            ),

            SizedBox(height: 30.h),

            // Title
            Text(
              "Email Verified Successfully!",
              textAlign: TextAlign.center,
              style: GoogleFonts.sora(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 12.h),

            // Subtitle
            Text(
              "Your account is now fully secured. You can now proceed to set up your profile",
              textAlign: TextAlign.center,
              style: GoogleFonts.sora(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white70,
                height: 1.5,
              ),
            ),

            SizedBox(height: 60.h),

            // Button
            SizedBox(
              width: double.infinity,
              height: 56.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF4C542),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  elevation: 6,
                  shadowColor: const Color(0xFFF4C542).withOpacity(0.5),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 400),
                      pageBuilder: (_, __, ___) => LoginScreen(),
                      transitionsBuilder: (_, animation, __, child) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                    ),
                  );
                },
                child: Text(
                  "Proceed",
                  style: GoogleFonts.sora(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
