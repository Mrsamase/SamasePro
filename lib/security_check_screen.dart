import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rio_labs/email_loading_screen.dart';

class SecurityCheckScreen extends StatefulWidget {
  const SecurityCheckScreen({super.key});

  @override
  State<SecurityCheckScreen> createState() => _SecurityCheckScreenState();
}

class _SecurityCheckScreenState extends State<SecurityCheckScreen> {
  final List<TextEditingController> controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  final List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());

  bool get isOtpComplete {
    return controllers.every((c) => c.text.isNotEmpty);
  }

  @override
  void dispose() {
    for (var c in controllers) {
      c.dispose();
    }
    for (var f in focusNodes) {
      f.dispose();
    }
    super.dispose();
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty) {
      if (index < 3) {
        FocusScope.of(context).requestFocus(focusNodes[index + 1]);
      } else {
        focusNodes[index].unfocus();
      }
    }
    setState(() {});
  }

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

                // 🔐 ICON IMAGE (replace with your asset)
                Container(
                  width: 75.w,
                  height: 75.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.amber.withOpacity(0.1),
                        blurRadius: 30.r,
                        spreadRadius: 2.r,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/Container.png',
                    fit: BoxFit.contain,
                  ),
                ),

                SizedBox(height: 40.h),

                Text(
                  "Security Check",
                  style: GoogleFonts.sora(
                    color: Colors.white,
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 12.h),

                Text(
                  "We've sent a 4-digit code to your email.\nEnter the code below to verify your email",
                  style: GoogleFonts.sora(
                    color: Colors.grey,
                    fontSize: 14.sp,
                    height: 1.6,
                  ),
                ),

                SizedBox(height: 40.h),

                // 🔢 OTP INPUT FIELDS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) {
                    return SizedBox(
                      width: 70.w,
                      height: 70.h,
                      child: TextField(
                        controller: controllers[index],
                        focusNode: focusNodes[index],
                        onChanged: (value) => _onChanged(value, index),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(1),
                        ],
                        style: GoogleFonts.sora(
                          color: Colors.white,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFF111113),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    );
                  }),
                ),

                SizedBox(height: 25.h),

                // 🔁 RESEND SECTION
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 6.w,
                          height: 6.h,
                          decoration: const BoxDecoration(
                            color: Colors.greenAccent,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Text(
                          "RESEND CODE (1:00)",
                          style: GoogleFonts.sora(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "I DIDN'T RECEIVE IT",
                      style: GoogleFonts.sora(
                        color: Color(0xFFF5C542),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40.h),

                // 🟡 VERIFY BUTTON (STATEFUL)
                GestureDetector(
                  onTap:
                      isOtpComplete
                          ? () {
                            // String otp = controllers.map((e) => e.text).join();
                            // print("OTP ENTERED: $otp");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EmailLoadingScreen(),
                              ),
                            );
                          }
                          : null,
                  child: Container(
                    width: double.infinity,
                    height: 60.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.r),
                      gradient:
                          isOtpComplete
                              ? const LinearGradient(
                                colors: [Color(0xFFF5C542), Color(0xFFD4A72C)],
                              )
                              : null,
                      color:
                          isOtpComplete
                              ? null
                              : const Color(0xFFE6C56A), // dull yellow
                      boxShadow:
                          isOtpComplete
                              ? [
                                BoxShadow(
                                  color: Colors.amber.withOpacity(0.4),
                                  blurRadius: 30.r,
                                  offset: Offset(0, 10.h),
                                ),
                              ]
                              : [],
                    ),
                    child: Center(
                      child: Text(
                        "Verify",
                        style: GoogleFonts.sora(
                          color: Colors.black.withOpacity(
                            isOtpComplete ? 1 : 0.6,
                          ),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
}
