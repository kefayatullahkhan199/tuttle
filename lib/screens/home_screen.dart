import 'package:flutter/material.dart';
import 'package:tuttle/configs/app_colors.dart';
import 'package:tuttle/custom_widegts/custom_button.dart';
import 'package:tuttle/custom_widegts/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBlueColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 91,
            child: Image(image: AssetImage('assets/logo.png')),
          ),
           SizedBox(height: 20,),
           Center(
             child: Container(
               height: 222,
               width: 357,
               decoration: BoxDecoration(
                 color: Colors.black,
                 borderRadius: BorderRadius.circular(12),
                 border: Border.all(width: 1,color: Colors.white)
               ),
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 20),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                      CustomText(fontSize: 20, text: 'Get Started', fontWeight: FontWeight.w600, fontFamily: 'fonts/inter_Regular.ttf'),
                     CustomText(fontSize: 14, text: 'Select your role below to continue', fontWeight: FontWeight.w400, fontFamily: 'fonts/inter_Regular.ttf'),
                     SizedBox(height: 12,),
                     CustomButton(text: 'Employee', height: 48, width: 309, containerColor: Colors.white, textColor: AppColors.blueBorderColor,borderColor: AppColors.blueBorderColor),
                     SizedBox(height: 12,),
                     CustomButton(text: 'Supervisor', height: 48, width: 309, containerColor: AppColors.darkBlueColor, textColor: Colors.white,borderColor: Colors.white)

                   ],
                 ),
               ),
             ),

           ),

        ],
      ),
    );
  }
}
