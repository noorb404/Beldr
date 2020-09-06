import 'package:flutter/material.dart';
import 'package:beldr/Design/shared/globals.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 0.0),

        child: Column(
          children: <Widget>[

            Center(
              child: CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage('https://st2.depositphotos.com/1006318/5909/v/950/depositphotos_59095529-stock-illustration-profile-icon-male-avatar.jpg'),
              ),
            ),

            SizedBox(height: 10.0),

            Text(
              'NAME',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12.0,
                  letterSpacing: 1.0
              ),
            ),
            SizedBox(height: 2.0),
            Text(
              'Bakrieh Noor',
              style: TextStyle(
                  color: Global.medBlack,
                  fontSize: 16.0,
                  letterSpacing: 2.0
              ),
            ),
            SizedBox(height: 8.0),


            Text('421 People rated.',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
            Divider(
              color: Global.medBlack,
              height: 20.0,
              indent: 40.0,
              endIndent: 40.0,
              thickness: 1,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(35,0,0,0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                      Text(
                        'Phone number:',
                        style: TextStyle(
                            letterSpacing: 2.0 ,
                            fontSize: 16.0 ,
                            color:Global.medBlack
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        '+972 54-7859418',
                        style: TextStyle(
                            fontSize: 14.0 ,
                            color:Global.medBlack
                        ),
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
