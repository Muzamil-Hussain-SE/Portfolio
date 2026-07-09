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
                Positioned.fill(
                  child: Image.asset('icons/bg3.jpeg', fit: BoxFit.cover),
                ),
                Positioned(
                  top: 200,
                  left: 460,
                  child: Row(
                    children: [
                      Image.asset('icons/stack.png'),
                      Text(
                        'TECH STACK.',
                        style: TextStyle(
                          color: Color.fromARGB(255, 97, 136, 153),
                          fontSize: 50,
                          fontFamily: 'ChangaOne',
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 350,
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 97, 136, 153),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(60.0),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('icons/py_icon.png'),
                        Text(
                          'Python',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 290,
                  left: 480,
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 97, 136, 153),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(60.0),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('icons/C_icon.png'),
                        Text(
                          'C',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 190,
                  right: 380,
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 97, 136, 153),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(60.0),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('icons/Dart_icon.png'),
                        Text(
                          'Dart',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 330,
                  left: 290,
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 97, 136, 153),
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(60.0),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('icons/html.png'),
                        Text(
                          'HTML',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 120,
                  left: 600,
                  child: Container(
                    height: 50,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(60.0),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('icons/firebase.png'),
                        Text(
                          'Firebase',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 97, 136, 153),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 250,
                  left: 300,
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(60.0),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('icons/cpp_icon.png'),
                        Text(
                          'C++',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 97, 136, 153),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 280,
                  left: 720,
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(60.0),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('icons/flutter_icon.png'),
                        Text(
                          'Flutter',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 97, 136, 153),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 110,
                  right: 400,
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(60.0),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('icons/css_icon.png'),
                        Text(
                          'CSS',
                          style: TextStyle(
                            fontSize: 30,
                            color: Color.fromARGB(255, 97, 136, 153),
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
