import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(fontFamily: 'Inter'),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'MUZAMIL.',
            style: TextStyle(fontFamily: 'ChangaOne', fontSize: 25),
          ),
          actions: [
            Text(
              'GitHub',
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(10.0)),
            Text(
              'Linkedin',
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(10.0)),
            Text(
              'Projects',
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(10.0)),
            Text(
              'Contact',
              style: TextStyle(
                fontFamily: 'PlayfairDisplay',
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(10.0)),
          ],
        ),
        body: Stack(
          children: [
            Positioned(
              top: 75,
              left: 80,
              child: Text(
                'MUZAMIL',
                style: TextStyle(fontSize: 60, fontFamily: 'ArchivoBlack'),
              ),
            ),
            Positioned(
              top: 150,
              left: 80,
              child: Text(
                'HUSSAIN',
                style: TextStyle(fontSize: 60, fontFamily: 'ArchivoBlack'),
              ),
            ),
            Positioned(
              top: 250,
              left: 80,
              child: Text(
                'APP DEVELOPER - WEB DEV - GAME DEVELOPER',
                style: TextStyle(fontFamily: 'Roboto'),
              ),
            ),
            Positioned(child: Image.asset()),
          ],
        ),
      ),
    );
  }
}
