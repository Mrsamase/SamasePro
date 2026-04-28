import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0C),
      extendBody: true,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),

                /// 🔔 TOP BAR
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Stack(
                      children: [
                        Container(
                          width: 45.w,
                          height: 45.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xFF102321),
                          ),
                          child: Icon(
                            Icons.notifications_none,
                            color: Colors.amber,
                            size: 20.sp,
                          ),
                        ),
                        Positioned(
                          right: 4,
                          top: 4,
                          child: Container(
                            width: 16.w,
                            height: 16.h,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                /// 📝 TITLE
                Text(
                  "Discover",
                  style: GoogleFonts.sora(
                    color: Colors.white,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Excellence.",
                  style: GoogleFonts.sora(
                    color: const Color(0xFFF5C542),
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 30.h),

                /// 🎯 FEATURED CARD
                _featuredCard(),

                SizedBox(height: 30.h),

                /// 📚 UPCOMING HEADER
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Seminars",
                      style: GoogleFonts.sora(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "VIEW ALL",
                      style: GoogleFonts.sora(
                        color: const Color(0xFFF5C542),
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.h),

                /// 📋 LIST
                _seminarItem(
                  title: "Digital Narrative:\nStorytelling for Brands",
                  category: "MARKETING",
                  price: "149 SC",
                  location: "Lincoln Center, Suite 4",
                  time: "NOV 12 • 2:00 PM",
                ),

                _seminarItem(
                  title: "Venture Capital & The\nNew Economy",
                  category: "FINANCE",
                  price: "FREE",
                  location: "Online Webinar",
                  time: "NOV 15 • 10:30 AM",
                ),

                _seminarItem(
                  title: "Advanced UX Dynamics in\n2026",
                  category: "DESIGN",
                  price: "199 SC",
                  location: "Grand Hall, Brooklyn",
                  time: "DEC 01 • 1:00 PM",
                ),

                SizedBox(height: 80.h),
              ],
            ),
          ),
        ),
      ),

      /// 🔻 BOTTOM NAV
      bottomNavigationBar: _bottomNav(),
    );
  }

  /// 🔶 FEATURED CARD
  Widget _featuredCard() {
    return Container(
      width: double.infinity,
      height: 220.h,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        gradient: const LinearGradient(
          colors: [Color(0xFF2F7F7F), Color(0xFF123B3B)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: const Color(0xFFF5C542),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Text(
              "LEADERSHIP",
              style: GoogleFonts.sora(
                fontSize: 10.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Spacer(),

          Text(
            "The Architectural\nMindset 2026",
            style: GoogleFonts.sora(
              color: Colors.white,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 8.h),

          Text(
            "Oct 24 • 09:00 AM",
            style: GoogleFonts.sora(color: Colors.white70, fontSize: 12.sp),
          ),

          SizedBox(height: 10.h),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "299 SC",
                style: GoogleFonts.sora(
                  color: const Color(0xFFF5C542),
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5C542),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Text(
                  "Book Spot",
                  style: GoogleFonts.sora(
                    color: Colors.black,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// 📋 SEMINAR ITEM
  Widget _seminarItem({
    required String title,
    required String category,
    required String price,
    required String location,
    required String time,
  }) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Row(
        children: [
          Container(
            width: 70.w,
            height: 70.h,
            decoration: BoxDecoration(
              color: const Color(0xFF1A1A1C),
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),

          SizedBox(width: 12.w),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: GoogleFonts.sora(
                    color: Colors.greenAccent,
                    fontSize: 10.sp,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  title,
                  style: GoogleFonts.sora(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  location,
                  style: GoogleFonts.sora(color: Colors.grey, fontSize: 11.sp),
                ),
                Text(
                  time,
                  style: GoogleFonts.sora(color: Colors.grey, fontSize: 10.sp),
                ),
              ],
            ),
          ),

          Text(
            price,
            style: GoogleFonts.sora(
              color: const Color(0xFFF5C542),
              fontSize: 14.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  /// 🔻 BOTTOM NAV
  Widget _bottomNav() {
    return Container(
      height: 70.h,
      decoration: const BoxDecoration(color: Colors.black),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(Icons.home, "HOME", true),
          _navItem(Icons.school, "MY SEMINARS", false),
          _navItem(Icons.person, "PROFILE", false),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, String label, bool active) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: active ? const Color(0xFFF5C542) : Colors.grey,
          size: 20.sp,
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          style: GoogleFonts.sora(
            color: active ? const Color(0xFFF5C542) : Colors.grey,
            fontSize: 10.sp,
          ),
        ),
      ],
    );
  }
}
