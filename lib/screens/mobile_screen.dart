import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_login_signup/constants/colors.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height * 0.15),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: 'Let\'s ',
                    style: GoogleFonts.raleway(
                      fontSize: 25,
                    )),
                TextSpan(
                    text: 'Sign In 👇',
                    style: GoogleFonts.raleway(
                        fontSize: 25, fontWeight: FontWeight.bold))
              ])),
              SizedBox(height: height * 0.02),
              Text(
                "'Hey, Enter your details to get sign in \nto your account.",
                style: GoogleFonts.raleway(fontSize: 14),
              ),
              SizedBox(height: height * 0.064),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Email',
                  style: GoogleFonts.raleway(
                    fontSize: 12.0,
                    color: AppColors.blueDarkColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.whiteColor),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: GoogleFonts.raleway(color: Colors.grey),
                      contentPadding: const EdgeInsets.only(top: 12),
                      border: InputBorder.none,
                      prefixIcon: Image.asset('assets/email.png')),
                ),
              ),
              SizedBox(height: height * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  'Password',
                  style: GoogleFonts.raleway(
                    fontSize: 12.0,
                    color: AppColors.blueDarkColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 6.0),
              Container(
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.whiteColor),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: GoogleFonts.raleway(color: Colors.grey),
                      contentPadding: const EdgeInsets.only(top: 15),
                      border: InputBorder.none,
                      prefixIcon: Image.asset('assets/lockIcon.png'),
                      suffixIcon: Image.asset('assets/eyeIcon.png')),
                ),
              ),
              SizedBox(height: height * 0.03),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: GoogleFonts.raleway(
                          color: AppColors.mainBlueColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )),
              ),
              SizedBox(height: height * 0.05),
              Align(
                alignment: Alignment.centerLeft,
                child: MaterialButton(
                  height: 50,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 70, vertical: 18),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: AppColors.mainBlueColor,
                  onPressed: () {},
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.raleway(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
