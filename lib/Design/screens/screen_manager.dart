import 'package:beldr/Design/screens/login_screen.dart';
import 'package:beldr/Design/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:beldr/Core/login_model.dart';
import 'package:beldr/Design/shared/globals.dart';
import 'package:beldr/Design/widgets/button_widget.dart';
import 'package:beldr/Design/widgets/textfield_widget.dart';
import 'signup_screen.dart';
import 'search_screen.dart';
import 'profile_screen.dart';
import 'home_screen.dart';
import 'profile_login_screen.dart';
import 'package:provider/provider.dart';
import 'profile_start.dart';


class ScreenManager extends StatelessWidget {
  static String routeName="/manager";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget(),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 1;
  final List<Widget> _widgetOptions = [
    SearchScreen(),
    HomeScreen(),
    ProfileStart()
  ];


  //Bottom Bar function
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Beldr' , style: TextStyle(color: Global.medBlack , fontFamily: 'lobster'),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body:_widgetOptions.elementAt(_selectedIndex),

















      //Bottom BAR - END OF EVERY PAGE!
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


















//   final size = MediaQuery.of(context).size;
//    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
//    final model = Provider.of<LoginModel>(context);
//
//    return Scaffold(
//
//







//      body: Column(
//        children: <Widget>[
//          Padding(
//            padding: const EdgeInsets.only(top: 200.0),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Text(
//                  'בחר איזור עבודה',
//                  style: TextStyle(
//                    color: Global.medBlack,
//                    fontSize: 16.0,
//                    letterSpacing: 1,
//                    fontWeight: FontWeight.w500,
//                  ),
//                ),
//              ],
//            ),
//          ),
//        //  Divider(height: 50.0,color: Global.medBlack,),
//          Padding(
//            padding: const EdgeInsets.fromLTRB(30.0,50.0,30.0,100.0),
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.end,
//              children: <Widget>[
//                ButtonTheme(
//                  height: 50.0,
//                  minWidth: 280.0,
//                  child: RaisedButton(
//                    onPressed: () {},
//                    textColor: Colors.white,
//                    child: Text('בתוך הבית'),
//                    color: Global.medBlack,
//                    shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(10),
//                    ),
//                  ),
//                ),
//                SizedBox(
//                  height: 20.0,
//                ),
//                ButtonTheme(
//                  height: 50.0,
//                  minWidth: 280.0,
//                  child: RaisedButton(
//                    onPressed: () {},
//                    textColor: Colors.white,
//                    child: Text('מחוץ לבית'),
//                    color: Global.medBlack,
//                    shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(10),
//                    ),
//                  ),
//                ),
//
//              ],
//            ),
//          ),
//        ],
//      ),