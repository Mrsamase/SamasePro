import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rio_labs/onboading_slide2.dart';
import 'package:rio_labs/sing_up.dart';

class OnboardingSlide1 extends StatelessWidget {
  const OnboardingSlide1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            /// ================= TOP ROW =================
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 200.h,
                    padding: EdgeInsets.all(25.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Colors.white12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.w),
                          decoration: BoxDecoration(
                            color: Colors.yellowAccent,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 22.sp,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 20.h),

                        _line(120.w),
                        SizedBox(height: 6.h),
                        _line(80.w),

                        const Spacer(),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(06),
                            color: Colors.white12,
                          ),
                          height: 50.h,
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(width: 10.w),

                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Colors.white12,
                    ),
                    child: Icon(
                      Icons.explore_outlined,
                      color: Colors.yellowAccent,
                      size: 30.sp,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15.h),

            /// ================= SECOND ROW =================
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120.h,
                    width: 195.w,
                    padding: EdgeInsets.all(12.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: Colors.white12,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(6.w),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: const Color.fromARGB(255, 97, 104, 88),
                          ),
                          child: Icon(
                            Icons.verified_user,
                            color: Colors.greenAccent,
                            size: 22.sp,
                          ),
                        ),

                        SizedBox(width: 20.w),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 35.h),
                              _line(110.w),
                              SizedBox(height: 6.h),
                              _line(70.w),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 10.w),

                  Container(
                    width: 50.w,
                    height: 50.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: const Color.fromARGB(255, 157, 157, 85),
                      ),
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.circle,
                        color: Colors.yellowAccent,
                        size: 10.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40.h),

            /// ================= TEXT SECTION =================
            Text(
              'Discover Seminars',
              style: GoogleFonts.sora(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'in your state',
              style: GoogleFonts.sora(
                fontSize: 28.sp,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),

            SizedBox(height: 10.h),

            Text(
              'Curated educational excellence',
              style: GoogleFonts.sora(fontSize: 18.sp, color: Colors.white),
            ),
            Text(
              'delivered right where you are',
              style: GoogleFonts.sora(fontSize: 18.sp, color: Colors.white),
            ),

            SizedBox(height: 25.h),

            /// ================= INDICATOR =================
            Row(
              children: [
                _indicator(true),
                SizedBox(width: 6.w),
                _indicator(false),
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
                    MaterialPageRoute(builder: (context) => OnboadingSlide2()),
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

  Widget _line(double width) {
    return Container(
      width: width,
      height: 8.h,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 154, 154, 118),
        borderRadius: BorderRadius.circular(8.r),
      ),
    );
  }

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
