import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MySeminarsPage extends StatelessWidget {
  const MySeminarsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h),

              /// TITLE
              Text(
                "My Seminars",
                style: GoogleFonts.sora(
                  color: Colors.white,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20.h),

              Container(
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Modern Leadership Architecture",
                      style: GoogleFonts.sora(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Oct 24, 2026 • 09:00 AM",
                      style: GoogleFonts.sora(color: Colors.white70),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30.h),

              Center(
                child: Column(
                  children: [
                    Container(
                      height: 150.h,
                      width: 150.h,
                      color: Colors.white,
                      child: const Icon(Icons.qr_code, size: 80),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "SP-992-KMP",
                      style: GoogleFonts.sora(
                        color: Colors.amber,
                        fontSize: 18.sp,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}
