import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rio_labs/email_verified_page.dart';

class EmailLoadingScreen extends StatelessWidget {
  const EmailLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EmailVerifiedPage()),
            );
          },
          child: Icon(Icons.arrow_forward),
        ),
      ),
      backgroundColor: const Color(0xFF0B0B0B),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _glowingLoader(),
                const SizedBox(height: 30),

                const Text(
                  "Loading",
                  style: TextStyle(
                    color: Color(0xFFFFC107),
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "VERIFYING YOUR EMAIL",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 12,
                    letterSpacing: 2,
                  ),
                ),
                Center(
                  child: Container(
                    width: 170.w,
                    child: Divider(thickness: 0.2, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _glowingLoader() {
    return Stack(
      alignment: Alignment.center,
      children: [
        // outer glow
        Container(
          width: 90.w,
          height: 90.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: const Color(0xFFFFC107).withOpacity(0.13),
                blurRadius: 30,
                spreadRadius: 5,
              ),
            ],
          ),
        ),

        // ring loader
        SizedBox(
          width: 60.w,
          height: 60.h,
          child: CircularProgressIndicator(
            strokeWidth: 2,

            valueColor: const AlwaysStoppedAnimation(Color(0xFFFFC107)),
          ),
        ),

        // center dot
        Container(
          width: 8.w,
          height: 8.h,
          decoration: const BoxDecoration(
            color: Color(0xFFFFC107),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
