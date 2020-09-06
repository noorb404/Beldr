import 'package:flutter/material.dart';
import 'package:beldr/Design/screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:beldr/Core/login_model.dart';
import 'routes.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: LoginScreen.routeName,
        routes: routes,
        //home: LoginScreen(),
      ),
    );
  }
}
