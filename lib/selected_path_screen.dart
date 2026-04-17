import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectPathScreen extends StatefulWidget {
  const SelectPathScreen({super.key});

  @override
  State<SelectPathScreen> createState() => _SelectPathScreenState();
}

class _SelectPathScreenState extends State<SelectPathScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0B),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80.h),

            /// Title
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Select Your\n",
                    style: GoogleFonts.sora(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: "Path.",
                    style: GoogleFonts.sora(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFD4AF37),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 12.h),

            /// Subtitle
            Text(
              "Tailor your experience within the SamasePro ecosystem.",
              style: GoogleFonts.sora(fontSize: 14.sp, color: Colors.white70),
            ),

            SizedBox(height: 30.h),

            /// Attendee
            _optionCard(
              index: 0,
              icon: Icons.school,
              title: "Attendee",
              subtitle: "Discover high-end seminars and masterclass sessions.",
            ),

            SizedBox(height: 20.h),

            /// Organizer
            _optionCard(
              index: 1,
              icon: Icons.copy_rounded,
              title: "Organizer",
              subtitle: "Host premium events and manage exclusive invitations.",
            ),

            const Spacer(),

            /// Continue Button
            Container(
              width: double.infinity,
              height: 55.h,
              decoration: BoxDecoration(
                color: const Color(0xFFD4AF37),
                borderRadius: BorderRadius.circular(12.r),
              ),
              alignment: Alignment.center,
              child: Text(
                "CONTINUE →",
                style: GoogleFonts.sora(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  letterSpacing: 1.5,
                ),
              ),
            ),

            SizedBox(height: 20.h),

            /// Footer
            Center(
              child: Text(
                "SECURE PROFESSIONAL ACCESS",
                style: GoogleFonts.sora(
                  fontSize: 11.sp,
                  color: Colors.white38,
                  letterSpacing: 2,
                ),
              ),
            ),

            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }

  Widget _optionCard({
    required int index,
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    final isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () => setState(() => selectedIndex = index),
      child: Container(
        padding: EdgeInsets.all(18.w),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(18.r),
          border: Border.all(
            color: isSelected ? const Color(0xFFD4AF37) : Colors.white12,
            width: 1.2,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Icon Box
            Container(
              height: 48.w,
              width: 48.w,
              decoration: BoxDecoration(
                color: const Color(0xFF1A1A1A),
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(icon, color: const Color(0xFFD4AF37), size: 24.sp),
            ),

            SizedBox(width: 16.w),

            /// Text
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.sora(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    subtitle,
                    style: GoogleFonts.sora(
                      fontSize: 13.sp,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            /// Radio Indicator
            Container(
              height: 20.w,
              width: 20.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? const Color(0xFFD4AF37) : Colors.white24,
                ),
              ),
              child:
                  isSelected
                      ? Center(
                        child: Container(
                          height: 10.w,
                          width: 10.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFD4AF37),
                          ),
                        ),
                      )
                      : null,
            ),
          ],
        ),
      ),
    );
  }
}
