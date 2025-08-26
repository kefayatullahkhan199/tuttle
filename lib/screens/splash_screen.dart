import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuttle/configs/app_colors.dart';
import 'package:tuttle/controllers/login_provider.dart';
import 'package:tuttle/screens/home_screen.dart';
import 'package:tuttle/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    seIsLogin();

  }
  seIsLogin()async{
    bool isLogin = await Provider.of<LoginProvider>(context,listen: false).handleSplashScreen();
    if (isLogin==true){
      Future.delayed(Duration(seconds: 3),(){
   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
      });
    }
    else {
      Future.delayed(Duration(seconds: 3),(){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginScreen()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBlueColor,
        body: Center(
          child: Container(
                height: 80,
                width: 73,
                decoration: BoxDecoration(),
                child: Image(image: AssetImage('assets/logo.png')),
              ),
        ));
  }
}
