import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuttle/configs/app_colors.dart';
import 'package:tuttle/controllers/login_provider.dart';
import 'package:tuttle/custom_widegts/custom_button.dart';
import 'package:tuttle/custom_widegts/custom_field.dart';

import '../custom_widegts/custom_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<LoginProvider>(context,listen: false);
    return Scaffold(
      backgroundColor: AppColors.lightBlueColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Container(
                  padding: EdgeInsets.all(12),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Image(
                    image: AssetImage('assets/arrow_icon.png'),
                    height: 18,
                    width: 18,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      height: 100,
                      width: 91,
                      child: Image(image: AssetImage('assets/logo.png')),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Container(
                      height: 72,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: CustomButton(
                          text: 'Supervisor',
                          width: double.infinity,
                          containerColor: AppColors.darkBlueColor,
                          textColor: Colors.white,
                          borderColor: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18),
                    child: Container(
                      height: 222,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1, color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText(
                                fontSize: 20,
                                text: 'Welcome',
                                fontWeight: FontWeight.w600,
                                fontFamily: 'fonts/inter_Regular.ttf'),
                            CustomText(
                                fontSize: 14,
                                text: 'please enter you detail to continue',
                                fontWeight: FontWeight.w400,
                                fontFamily: 'fonts/inter_Regular.ttf'),
                            SizedBox(
                              height: 12,
                            ),
                            CustomField(
                                hintText: 'Email',
                                controller: auth.emailController),
                            SizedBox(
                              height: 12,
                            ),
                            CustomField(
                              hintText: 'Password',
                              controller: auth.passController,
                              isObscure: _isObscured,
                              suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    _isObscured = !_isObscured;
                                  });
                                },
                                child: Icon(_isObscured
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 151,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: CustomButton(
                        text: 'Sign in',
                        width: double.infinity,
                        containerColor: AppColors.darkBlueColor,
                        textColor: Colors.white,
                        borderColor: AppColors.darkBlueColor),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
