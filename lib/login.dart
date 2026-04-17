import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rio_labs/forgot_password_screen.dart';
import 'package:rio_labs/selected_path_screen.dart';
import 'package:rio_labs/sing_up.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0C),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),

                // 🔐 ICON BOX
                Container(
                  width: 70.w,
                  height: 70.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A1A1C),
                    borderRadius: BorderRadius.circular(18.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.amber.withOpacity(0.3),
                        blurRadius: 30.r,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.login,
                    color: const Color(0xFFF5C542),
                    size: 28.sp,
                  ),
                ),

                SizedBox(height: 40.h),

                // 📝 TITLE
                Text(
                  "Welcome Back",
                  style: GoogleFonts.sora(
                    color: Colors.white,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8.h),

                Text(
                  "Log in to access your seminars",
                  style: GoogleFonts.sora(color: Colors.grey, fontSize: 14.sp),
                ),

                SizedBox(height: 40.h),

                // 📧 EMAIL
                _label("EMAIL ADDRESS"),
                SizedBox(height: 8.h),
                _inputField(hint: "name@domain.com", icon: Icons.mail_outline),

                SizedBox(height: 20.h),

                // 🔒 PASSWORD
                _label("PASSWORD"),
                SizedBox(height: 8.h),
                _inputField(
                  hint: "••••••••",
                  icon: Icons.lock_outline,
                  obscure: true,
                ),

                SizedBox(height: 10.h),

                // 🔑 FORGOT PASSWORD
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen(),
                        ),
                      );
                    },

                    child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.sora(
                        color: const Color(0xFFF5C542),
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30.h),

                // 🟡 LOGIN BUTTON
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectPathScreen(),
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
                        "Login",
                        style: GoogleFonts.sora(
                          color: Colors.black,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30.h),

                // ➖ DIVIDER
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                        thickness: 1.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        "OR CONTINUE WITH",
                        style: GoogleFonts.sora(
                          color: Colors.grey,
                          fontSize: 10.sp,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.withOpacity(0.3),
                        thickness: 1.w,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30.h),

                // 🔘 GOOGLE BUTTON
                Container(
                  width: double.infinity,
                  height: 55.h,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A1A1C),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        color: Colors.white,
                        size: 20.sp,
                      ),
                      SizedBox(width: 10.w),
                      Text(
                        "Google",
                        style: GoogleFonts.sora(
                          color: Colors.white,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40.h),

                // 🔁 SIGN UP
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Don't have an account? ",
                      style: GoogleFonts.sora(
                        color: Colors.grey,
                        fontSize: 14.sp,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign Up",
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
                                      builder: (context) => const SingUp(),
                                    ),
                                  );
                                },
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 🔹 LABEL
  Widget _label(String text) {
    return Text(
      text,
      style: GoogleFonts.sora(
        color: Colors.grey,
        fontSize: 12.sp,
        letterSpacing: 1.2,
      ),
    );
  }

  // 🔹 INPUT FIELD
  Widget _inputField({
    required String hint,
    required IconData icon,
    bool obscure = false,
  }) {
    return TextField(
      obscureText: obscure,
      style: GoogleFonts.sora(color: Colors.white, fontSize: 14.sp),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: GoogleFonts.sora(color: Colors.grey, fontSize: 14.sp),
        filled: true,
        fillColor: const Color(0xFF121214),
        prefixIcon: Icon(icon, color: Colors.grey, size: 20.sp),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
