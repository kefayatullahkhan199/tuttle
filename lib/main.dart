import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tuttle/controllers/login_provider.dart';
import 'package:tuttle/controllers/provider.dart';
import 'package:tuttle/screens/home_screen.dart';
import 'package:tuttle/screens/login_screen.dart';
import 'package:tuttle/screens/splash_screen.dart';

import 'controllers/profile_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
