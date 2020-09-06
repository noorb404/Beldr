import 'package:flutter/material.dart';
import 'package:beldr/Design/shared/globals.dart';
import 'package:beldr/Design/screens/login_screen.dart';


class ProfileLogin extends StatefulWidget {
  static String routeName="/profileLogin";
  @override
  _ProfileLoginState createState() => _ProfileLoginState();
}

class _ProfileLoginState extends State<ProfileLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30,100,30,0),
          child: Column(
            children: <Widget>[
              ButtonTheme(
                height: 50.0,
                minWidth: 280.0,
                child: RaisedButton(
                  onPressed: () => Navigator.push(context, new MaterialPageRoute(
                      builder: (context) =>
                      new LoginScreen())
                  ),
                  textColor: Colors.white,
                  child: Text('Beldr'),
                  color: Global.medBlack,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                ),
              ),
              SizedBox(height: 20,),
              ButtonTheme(
                height: 50.0,
                minWidth: 280.0,
                child: RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  child: Text('Facebook'),
                  color: Global.mediumBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                ),
              ),
              SizedBox(height: 20,),
              ButtonTheme(
                height: 50.0,
                minWidth: 280.0,
                child: RaisedButton(
                  onPressed: (){},
                  textColor: Colors.white,
                  child: Text('Gmail'),
                  color: Colors.red[600],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        )
      ),

    );
  }
}
