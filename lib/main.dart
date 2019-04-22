import 'package:flutter/material.dart';
import 'package:genbi/CustomShapeClipper.dart';

void main()=>runApp(MaterialApp(
  title: 'genbi',
  debugShowCheckedModeBanner: false,
  home: HomeScreen(),
  theme: appTheme,
));
Color firstColor = Color(0xFF0D47A1);
Color secondColor = Color(0xFF0091EA);

ThemeData appTheme =
    ThemeData(primaryColor: Color(0xFFF3791A), fontFamily: 'Oxygen');

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          HomeScreenTopPart()
        ],
      ),
    );
  }
}

class HomeScreenTopPart extends StatefulWidget {
  @override
  _HomeScreenTopPartState createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(height: 400,
          decoration: BoxDecoration(gradient: LinearGradient(colors: [
            firstColor,
            secondColor
          ])),
          child: Column(
            children: <Widget>[
              SizedBox(height: 50.0,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.location_on, color: Colors.white),
                    SizedBox(height: 16.0,),
                    PopupMenuButton(
                      child: Row(
                        children: <Widget>[
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          ),
        )
      ],
    );
  }
}