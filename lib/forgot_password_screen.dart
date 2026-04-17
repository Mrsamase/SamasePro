import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rio_labs/login.dart';
import 'package:rio_labs/reset_password_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0C),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 80.h),

                // 🔐 ICON CIRCLE
                Container(
                  width: 90.w,
                  height: 90.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xFF0F2A22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green.withOpacity(0.2),
                        blurRadius: 40.r,
                        spreadRadius: 5.r,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.lock_person_rounded,
                    color: const Color(0xFFF5C542),
                    size: 35.sp,
                  ),
                ),

                SizedBox(height: 30.h),

                // 📝 TITLE
                Text(
                  "Forgot Password?",
                  style: GoogleFonts.sora(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10.h),

                // 📄 DESCRIPTION
                Text(
                  "No worries! Enter your email address below and\nwe will send you a link to reset your password",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sora(
                    color: Colors.grey,
                    fontSize: 13.sp,
                    height: 1.6,
                  ),
                ),

                SizedBox(height: 40.h),

                // 📧 EMAIL FIELD
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "EMAIL ADDRESS",
                    style: GoogleFonts.sora(
                      color: Colors.grey,
                      fontSize: 12.sp,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),

                SizedBox(height: 8.h),

                TextField(
                  style: GoogleFonts.sora(color: Colors.white, fontSize: 14.sp),
                  decoration: InputDecoration(
                    hintText: "name@domain.com",
                    hintStyle: GoogleFonts.sora(
                      color: Colors.grey,
                      fontSize: 14.sp,
                    ),
                    filled: true,
                    fillColor: const Color(0xFF121214),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.r),
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 40.h),

                // 🟡 BUTTON
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResetPasswordScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 55.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      gradient: const LinearGradient(
                        colors: [Color(0xFFF5C542), Color(0xFFD4A72C)],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.amber.withOpacity(0.4),
                          blurRadius: 25.r,
                          offset: Offset(0, 10.h),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Send Reset Link",
                        style: GoogleFonts.sora(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25.h),

                // 🔁 BACK TO LOGIN
                RichText(
                  text: TextSpan(
                    text: "Remembered your password? ",
                    style: GoogleFonts.sora(
                      color: Colors.grey,
                      fontSize: 13.sp,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign in",
                        style: GoogleFonts.sora(
                          color: const Color(0xFFF5C542),
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
