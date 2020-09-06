import 'package:beldr/Design/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:beldr/Core/login_model.dart';
import 'package:beldr/Design/shared/globals.dart';
import 'package:beldr/Design/widgets/button_widget.dart';
import 'package:beldr/Design/widgets/textfield_widget.dart';
import 'package:provider/provider.dart';



class SignUpScreen extends StatelessWidget {

  static String routeName = "/signup";
  static String confirm ;
  static bool passConfirmed=false;
  @override
  Widget build(BuildContext context) {

    final model = Provider.of<LoginModel>(context);


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Global.white,
        centerTitle:true,
        leading: BackButton(color: Global.medBlack,),
      ),
      backgroundColor: Global.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Create an account", style: TextStyle(
                    color: Global.medBlack,
                    fontSize: 30.0,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,

                  ),),
                  Text(
                    'Complete your details',
                    style: TextStyle(
                      color: Global.medBlack,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,

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
                        onChanged: (value){
                          confirm=value;
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFieldWidget(
                        hintText: 'Confirm Password',
                        obscureText: model.isVisible ? false : true,
                        prefixIconData: model.isConfirm? Icons.check : Icons.lock_outline,
                        suffixIconData: model.isVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        onChanged: (value) {
                          model.isConfirmMatch(value, confirm);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: <Widget>[
                      ButtonWidget(
                        title: 'Sign up',
                        hasBorder: false,
                      ),
                      SizedBox(height: 10.0,),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: new Text('already have an account?',
                                style:TextStyle(color: Global.medBlack)),
                            onTap: () {},
                          ),
                          GestureDetector(
                              onTap: () => Navigator.pushNamed(context, LoginScreen.routeName),
                              child: new Text(
                                'Login.',
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

