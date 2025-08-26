import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tuttle/screens/login_screen.dart';

class LoginProvider extends ChangeNotifier {
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();

  bool isLoading = false;
  setLoading(bool load) {
    isLoading = load;
    notifyListeners();
  }

  Future<void> registerUser(
      {required BuildContext context,
      required String email,
      required String password}) async {
    setLoading(true);
    var signInUri = 'https://tuttle-backend.onrender.com/api/auth/register';
    var header = {'Content-Type': 'application/json'};
    var body = jsonEncode({'Email': email, 'password': password});
    try {
      http.Response response =
          await http.post(Uri.parse(signInUri), headers: header, body: body);
      if (response.statusCode == 201) {

        setLoading(false);
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => LoginScreen()));
      }
    } catch (e) {
      setLoading(false);
      print('the error is $e');
    }
  }

  Future<void> sendLogin(
      {required String email,
      required String password,
      required BuildContext context}) async {
    SharedPreferences sp=await SharedPreferences.getInstance();


    var signInUrl = 'https://tuttle-backend.onrender.com/api/auth/login';
    var header = {'Content-Type': 'application/json'};
    var body = jsonEncode({'Email': email, 'password': password});
    try {
      http.Response response =
          await http.post(Uri.parse(signInUrl), headers: header, body: body);
      if (response.statusCode == 200) {


        sp.setBool('isLogin', true);


        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Login Successful'),
          duration: Duration(seconds: 3),
        ));
      }
    } catch (e) {
      setLoading(false);
      print('the error is there $e');
    }
  }

  Future<bool> handleSplashScreen() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.getBool('isLogin');
    return sp.getBool('isLogin') ?? false;
  }


}
