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
          backgroundColor: Colors.white,
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
        body: PageView(
          scrollDirection: Axis.vertical,
          children: [
            Stack(
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
                Positioned(
                  top: 270,
                  left: 80,
                  child: Text(
                    'BSCS Student at SIBAU',
                    style: TextStyle(fontFamily: 'Roboto'),
                  ),
                ),
                Positioned(right: 50, child: Image.asset('me.jpeg')),
                Positioned(
                  top: 330,
                  left: 100,
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 97, 136, 153),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      'GitHub',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Positioned(
                  top: 330,
                  left: 210,
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Text(
                      'Contact',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Positioned(
                  top: 100,
                  left: 480,
                  child: Text(
                    'TECH STACK.',
                    style: TextStyle(fontSize: 50, fontFamily: 'ChangaOne'),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 465,
                  child: Container(
                    alignment: Alignment.center,
                    height: 252,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color.fromARGB(255, 97, 136, 153),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'C/C++',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: 'BlackArchivo',
                          ),
                        ),
                        Text(
                          'HTML',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: 'BlackArchivo',
                          ),
                        ),
                        Text(
                          'DART',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: 'BlackArchivo',
                          ),
                        ),
                        Text(
                          'Flutter',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: 'BlackArchivo',
                          ),
                        ),
                        Text(
                          'CSS',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: 'BlackArchivo',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
