import 'package:beldr/Design/screens/home_screen.dart';
import 'package:beldr/Design/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:beldr/Design/shared/globals.dart';
import 'profile_login_screen.dart';



class ProfileStart extends StatefulWidget {
  static String routeName="/profileStart";
  @override
  _ProfileStartState createState() => _ProfileStartState();
}

class _ProfileStartState extends State<ProfileStart> {
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
                        new ProfileLogin())
                    ),
                    textColor: Colors.white,
                    child: Text('לקוח'),
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
                    onPressed: () => Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                        new ProfileLogin())
                    ),
                    textColor: Colors.white,
                    child: Text('בעל עסק'),
                    color: Global.medBlack,
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
