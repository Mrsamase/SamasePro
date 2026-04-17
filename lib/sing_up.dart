import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rio_labs/login.dart';
import 'package:rio_labs/security_check_screen.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B0B0C),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),

              Container(
                width: 60.w,
                height: 60.h,
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1C),
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amber.withOpacity(0.4),
                      blurRadius: 20.r,
                      spreadRadius: 1.r,
                    ),
                  ],
                ),
                child: Image.asset('assets/images/boxphone.png'),
              ),

              SizedBox(height: 40.h),

              Text(
                "Create Account",
                style: GoogleFonts.sora(
                  color: Colors.white,
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 8.h),

              Text(
                "Join the elite seminar network",
                style: GoogleFonts.sora(color: Colors.grey, fontSize: 14.sp),
              ),

              SizedBox(height: 40.h),

              buildLabel("EMAIL ADDRESS"),
              SizedBox(height: 8.h),
              buildInputField(
                hint: "name@company.com",
                icon: Icons.mail_outline,
              ),

              SizedBox(height: 20.h),

              buildLabel("PASSWORD"),
              SizedBox(height: 8.h),
              buildInputField(
                hint: "••••••••••••",
                icon: Icons.visibility_off_outlined,
                obscure: true,
              ),

              SizedBox(height: 20.h),

              buildLabel("CONFIRM PASSWORD"),
              SizedBox(height: 8.h),
              buildInputField(
                hint: "••••••••••••",
                icon: Icons.visibility_off_outlined,
                obscure: true,
              ),

              SizedBox(height: 20.h),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 400),
                      pageBuilder: (_, __, ___) => SecurityCheckScreen(),
                      transitionsBuilder: (_, animation, __, child) {
                        return FadeTransition(opacity: animation, child: child);
                      },
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
                        color: Colors.amber.withOpacity(0.5),
                        blurRadius: 20.r,
                        offset: Offset(0, 8.h),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "Create Account",
                      style: GoogleFonts.sora(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20.h),

              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Already have an account? ",
                    style: GoogleFonts.sora(
                      color: Colors.grey,
                      fontSize: 14.sp,
                    ),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: GoogleFonts.sora(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
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
              ),

              SizedBox(height: 20.h),

              Center(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Divider(color: Colors.grey, thickness: 1.0.w),
                        ),
                        Text(
                          " PROTECTED SECURITY ",
                          style: GoogleFonts.sora(
                            color: Colors.grey,
                            letterSpacing: 2,
                            fontSize: 10.sp,
                          ),
                        ),
                        Expanded(
                          child: Divider(color: Colors.grey, thickness: 1.0.w),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.h),
                    Text(
                      "By creating an account, you agree to our Terms of Service and \nPrivacy Policy.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.sora(
                        color: Colors.grey,
                        fontSize: 10.sp,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLabel(String text) {
    return Text(
      text,
      style: GoogleFonts.sora(
        color: Colors.grey,
        fontSize: 12.sp,
        letterSpacing: 1.2,
      ),
    );
  }

  Widget buildInputField({
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
