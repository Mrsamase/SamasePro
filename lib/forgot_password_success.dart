import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordSuccess extends StatefulWidget {
  const ForgotPasswordSuccess({super.key});

  @override
  State<ForgotPasswordSuccess> createState() => _ForgotPasswordSuccess();
}

class _ForgotPasswordSuccess extends State<ForgotPasswordSuccess> {
  bool obscure1 = true;
  bool obscure2 = true;

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
                SizedBox(height: 60.h),

                // 📝 TITLE
                Text(
                  "Reset Your Password",
                  style: GoogleFonts.sora(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8.h),

                Text(
                  "Create a new password for your account",
                  style: GoogleFonts.sora(color: Colors.grey, fontSize: 13.sp),
                ),

                SizedBox(height: 40.h),

                // 🔒 NEW PASSWORD
                _label("NEW PASSWORD"),
                SizedBox(height: 8.h),
                _passwordField(
                  obscure: obscure1,
                  onToggle: () {
                    setState(() => obscure1 = !obscure1);
                  },
                ),

                SizedBox(height: 10.h),

                // ⚠️ PASSWORD RULE
                Row(
                  children: [
                    Container(
                      width: 8.w,
                      height: 8.h,
                      decoration: const BoxDecoration(
                        color: Color(0xFFBDB6A8),
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Expanded(
                      child: Text(
                        "Min. 8 characters, 1 uppercase, 1 number, 1 symbol",
                        style: GoogleFonts.sora(
                          color: Colors.grey,
                          fontSize: 10.sp,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 25.h),

                // 🔒 CONFIRM PASSWORD
                _label("CONFIRM PASSWORD"),
                SizedBox(height: 8.h),
                _passwordField(
                  obscure: obscure2,
                  onToggle: () {
                    setState(() => obscure2 = !obscure2);
                  },
                ),

                SizedBox(height: 50.h),

                // 🟡 BUTTON
                Container(
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
                      "Set New Password",
                      style: GoogleFonts.sora(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25.h),

                // 🔁 SIGN IN
                Center(
                  child: RichText(
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
                        ),
                      ],
                    ),
                  ),
                ),
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

  // 🔹 PASSWORD FIELD
  Widget _passwordField({
    required bool obscure,
    required VoidCallback onToggle,
  }) {
    return TextField(
      obscureText: obscure,
      style: GoogleFonts.sora(color: Colors.white, fontSize: 14.sp),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFF121214),
        suffixIcon: IconButton(
          onPressed: onToggle,
          icon: Icon(
            obscure ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
            size: 20.sp,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.2)),
        ),
      ),
    );
  }
}
