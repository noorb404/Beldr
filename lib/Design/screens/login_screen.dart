import 'package:beldr/Design/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:beldr/Core/login_model.dart';
import 'package:beldr/Design/shared/globals.dart';
import 'package:beldr/Design/widgets/button_widget.dart';
import 'package:beldr/Design/widgets/textfield_widget.dart';
import 'signup_screen.dart';
import 'package:provider/provider.dart';
import 'screen_manager.dart';


class LoginScreen extends StatelessWidget {
  static String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    final model = Provider.of<LoginModel>(context);

    return Scaffold(
      backgroundColor: Global.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Beldr',
                    style: TextStyle(
                      color: Global.medBlack,
                      fontSize: 60.0,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'lobster',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0,50.0,30.0,100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextFieldWidget(
                    hintText: 'Email',
                    obscureText: false,
                    prefixIconData: Icons.mail_outline,
                    suffixIconData: model.isValid ? Icons.check : null,
                    onChanged: (value) {
                      model.isValidEmail(value);
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextFieldWidget(
                        hintText: 'Password',
                        obscureText: model.isVisible ? false : true,
                        prefixIconData: Icons.lock_outline,
                        suffixIconData: model.isVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      FlatButton(
                        onPressed: (){},
                        child: Text('Forgot password?',
                          style: TextStyle(
                            color: Global.mediumBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                   children: <Widget>[
                     ButtonTheme(
                       height: 50.0,
                       minWidth: 280.0,
                       child: RaisedButton(
                         onPressed: () => Navigator.pushNamed(context, ScreenManager.routeName),
                         textColor: Colors.white,
                         child: Text('Login'),
                         color: Global.mediumBlue,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10),
                         ),

                       ),
                     ),
                     SizedBox(height: 10.0,),
                     new Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         GestureDetector(
                           child: new Text('Don\'t have an account?',
                               style:TextStyle(color: Global.medBlack)),
                           onTap: () {},
                         ),
                         GestureDetector(
                             onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
                             child: new Text(
                               'Sign up.',
                               style: new TextStyle(
                                   color: Global.mediumBlue),
                             ))
                       ],
                     ),


                   ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
