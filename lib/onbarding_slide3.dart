import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rio_labs/sing_up.dart';

class OnboardingSlide3 extends StatelessWidget {
  const OnboardingSlide3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),

      body: Padding(
        padding: EdgeInsets.all(20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h),

            Image.asset('assets/images/herov.png'),

            /// ================= TEXT SECTION =================
            Text(
              'Pay once, attend',
              style: GoogleFonts.sora(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Text(
                  'with a',
                  style: GoogleFonts.sora(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  ' QR code',
                  style: GoogleFonts.sora(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),

            SizedBox(height: 10.h),

            Text(
              'Seamlessly register for high-value',
              style: GoogleFonts.sora(fontSize: 18.sp, color: Colors.white),
            ),
            Text(
              'events and check in with your',
              style: GoogleFonts.sora(fontSize: 18.sp, color: Colors.white),
            ),
            Text(
              'unique digital pass.',
              style: GoogleFonts.sora(fontSize: 18.sp, color: Colors.white),
            ),

            SizedBox(height: 25.h),

            /// ================= INDICATOR =================
            Row(
              children: [
                _indicator(false),
                SizedBox(width: 6.w),
                _indicator(false),
                SizedBox(width: 6.w),
                _indicator(true),
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
                      pageBuilder: (_, __, ___) => SingUp(),
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
            SizedBox(height: 5),
            Center(
              child: Text(
                'SECURE 256-BIT ENCRYPTED CHECKOUT',
                style: GoogleFonts.sora(fontSize: 12.sp, color: Colors.white),
                textAlign: TextAlign.center,
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
