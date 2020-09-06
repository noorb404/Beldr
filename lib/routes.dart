import 'package:beldr/Design/screens/profile_login_screen.dart';
import 'package:beldr/Design/screens/signup_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:beldr/Design/screens/login_screen.dart';
import 'package:beldr/Design/screens/home_screen.dart';
import 'package:beldr/Design/screens/screen_manager.dart';
import 'package:beldr/Design/screens/profile_login_screen.dart';
import 'package:beldr/Design/screens/profile_start.dart';

final Map<String, WidgetBuilder> routes = {

  ScreenManager.routeName: (context) => ScreenManager(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  ProfileLogin.routeName:(context) => ProfileLogin(),
  ProfileStart.routeName:(context) => ProfileStart(),

};
