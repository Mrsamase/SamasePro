import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rio_labs/onbarding_slide3.dart';
import 'package:rio_labs/sing_up.dart';

class OnboadingSlide2 extends StatelessWidget {
  const OnboadingSlide2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 400),
                    pageBuilder: (_, __, ___) => SingUp(),
                    transitionsBuilder: (_, animation, __, child) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                  ),
                );
              },
              child: Text('Skip', style: GoogleFonts.sora(fontSize: 16.sp)),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h),

            Image.asset('assets/images/hero_passport.png'),

            /// ================= TEXT SECTION =================
            Text(
              'Learn skills from',
              style: GoogleFonts.sora(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'verified',
              style: GoogleFonts.sora(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
            Text(
              'professionals',
              style: GoogleFonts.sora(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),

            SizedBox(height: 10.h),

            Text(
              'Access elite educational seminars',
              style: GoogleFonts.sora(fontSize: 18.sp, color: Colors.white),
            ),
            Text(
              'curated for your professional',
              style: GoogleFonts.sora(fontSize: 18.sp, color: Colors.white),
            ),
            Text(
              'growth',
              style: GoogleFonts.sora(fontSize: 18.sp, color: Colors.white),
            ),

            SizedBox(height: 25.h),

            /// ================= INDICATOR =================
            Row(
              children: [
                _indicator(false),
                SizedBox(width: 6.w),
                _indicator(true),
                SizedBox(width: 6.w),
                _indicator(false),
              ],
            ),

            SizedBox(height: 30.h),

            /// ================= BUTTON =================
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFFF5C542),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 14.h),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 400),
                      pageBuilder: (_, __, ___) => OnboardingSlide3(),
                      transitionsBuilder: (_, animation, __, child) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "CONTINUE",
                      style: GoogleFonts.sora(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Icon(Icons.arrow_forward, fontWeight: FontWeight.bold),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// ================= HELPERS =================

  Widget _indicator(bool active) {
    return Container(
      width: 40.w,
      height: 4.h,
      decoration: BoxDecoration(
        color: active ? Colors.green : Colors.white12,
        borderRadius: BorderRadius.circular(8.r),
      ),
    );
  }
}
