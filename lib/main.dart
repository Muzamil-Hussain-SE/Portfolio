import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final Uri _github = Uri.parse('https://github.com/Muzamil-Hussain-SE');
  final Uri _contact = Uri.parse('mailto:muzammilbinqasim@gmail.com');
  final Uri _linkedin = Uri.parse(
    'https://www.linkedin.com/in/muzamil-hussain-1a4693347',
  );
  Future<void> launchGithub() async {
    await launchUrl(_github);
  }

  Future<void> email() async {
    await launchUrl(_contact);
  }

  Future<void> launchLinkedin() async {
    await launchUrl(_linkedin);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
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
            InkWell(
              onTap: launchGithub,
              child: Text(
                'GitHub',
                style: TextStyle(
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(10.0)),
            InkWell(
              onTap: launchLinkedin,
              child: Text(
                'Linkedin',
                style: TextStyle(
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(10.0)),

            InkWell(
              onTap: () {},
              child: Text(
                'Projects',
                style: TextStyle(
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(padding: EdgeInsetsGeometry.all(10.0)),
            InkWell(
              onTap: email,
              child: Text(
                'Contact',
                style: TextStyle(
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.w400,
                ),
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
                  top: w > h ? 75 : 50,
                  left: w > h ? 80 : 100,
                  child: Text(
                    'MUZAMIL',
                    style: TextStyle(fontSize: 60, fontFamily: 'ArchivoBlack'),
                  ),
                ),
                Positioned(
                  top: w > h ? 150 : 100,
                  left: w > h ? 80 : 100,
                  child: Text(
                    'HUSSAIN',
                    style: TextStyle(fontSize: 60, fontFamily: 'ArchivoBlack'),
                  ),
                ),
                Positioned(
                  top: w > h ? 250 : 200,
                  left: 80,
                  child: Text(
                    'APP DEVELOPER - WEB DEV - GAME DEVELOPER',
                    style: TextStyle(fontFamily: 'Roboto'),
                  ),
                ),
                Positioned(
                  top: w > h ? 270 : 220,
                  left: w > h ? 80 : 150,
                  child: Text(
                    'BSCS Student at SIBAU',
                    style: TextStyle(fontFamily: 'Roboto'),
                  ),
                ),
                w >= h
                    ? Positioned(
                        right: 50,
                        child: Image.network(
                          "https://i.ibb.co/rGX9fG30/me.jpg",
                        ),
                      )
                    : Positioned(
                        top: 400,
                        left: 50,
                        child: Center(
                          child: Image.network(
                            "https://i.ibb.co/rGX9fG30/me.jpg",
                            fit: BoxFit.cover,
                            // width: 400,
                            // height: 720,
                          ),
                        ),
                      ),
                Positioned(
                  top: 330,
                  left: w > h ? 80 : 120,
                  child: InkWell(
                    onTap: launchGithub,
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
                ),
                Positioned(
                  top: 330,
                  left: w > h ? 200 : 230,
                  child: InkWell(
                    onTap: email,
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
                ),
              ],
            ),
            Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          const Color.fromARGB(255, 215, 215, 215),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsGeometry.all(20),
                          child: Row(
                            children: [
                              Image.asset('icons/stack.png'),
                              Text(
                                'TECH STACK.',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 97, 136, 153),
                                  fontSize: w > h ? 50 : 30,
                                  fontFamily: 'ChangaOne',
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: SizedBox(
                            width: w,
                            height: h - (w >= h ? 400 : 200),
                            child: ListView(
                              scrollDirection: w > h
                                  ? Axis.horizontal
                                  : Axis.vertical,
                              children: [
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Colors.blue,
                                        const Color.fromARGB(255, 102, 68, 255),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/YFfZdq6C/pngwing-com.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  Flutter",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 213, 193, 7),
                                        const Color.fromARGB(255, 204, 73, 2),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/1tdms01h/pngwing-com-3.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  Firebase",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),

                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 65, 33, 243),
                                        const Color.fromARGB(255, 68, 227, 255),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/twXN4LCQ/dart.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  Dart",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 24, 2, 148),
                                        const Color.fromARGB(255, 0, 85, 212),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/Lhh3nmN6/pngwing-com-1.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  C++",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 20, 1, 131),
                                        const Color.fromARGB(255, 0, 69, 219),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/PzYtT580/pngwing-com-4.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  C",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 15, 3, 81),
                                        const Color.fromARGB(255, 164, 219, 0),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/rGssrMxz/pngwing-com-2.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  Python",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 50,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 1, 49, 131),
                                        const Color.fromARGB(255, 0, 106, 219),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/gZvycXJc/pngwing-com-5.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  Godot Engine",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 131, 51, 1),
                                        const Color.fromARGB(255, 219, 131, 0),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/nNP21Wb9/pngwing-com-6.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  HTML",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 1, 10, 131),
                                        const Color.fromARGB(255, 0, 110, 255),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/wFYhCSHj/pngwing-com-7.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  CSS",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                                Container(
                                  width: w >= h ? 350 : 300,
                                  height: w >= h ? 100 : 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        const Color.fromARGB(255, 131, 107, 1),
                                        const Color.fromARGB(255, 208, 219, 0),
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.network(
                                        "https://i.ibb.co/C5NXMC0X/pngwing-com-8.png",
                                        width: 80,
                                        height: 80,
                                      ),
                                      Text(
                                        "  Javascript",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10, height: 10),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          const Color.fromARGB(255, 3, 110, 97),
                          const Color.fromARGB(255, 2, 51, 41),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsGeometry.all(20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.school,
                                size: w > h ? 50 : 30,
                                color: Color.fromARGB(255, 236, 238, 239),
                              ),
                              Text(
                                'Education.',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 249, 253, 255),
                                  fontSize: w > h ? 50 : 30,
                                  fontFamily: 'ChangaOne',
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: w >= h ? 80 : 0),
                        w >= h
                            ? Row(
                                children: [
                                  SizedBox(width: 100),
                                  Container(
                                    width: 350,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 65),
                                        Text(
                                          "Sukkar IBA University",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        ),
                                        Text(
                                          "BSCS Present (1st semester)",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 140,
                                    height: 1,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    width: 350,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 65),
                                        Text(
                                          "MTB College SDK",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        ),
                                        Text(
                                          "Intermedite in Computer Science",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 1,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    width: 305,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 65),
                                        Text(
                                          "Model high School",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                          ),
                                        ),
                                        Text(
                                          "Sadiqabad - Secondary School",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 25),
                                        Text(
                                          "Sukkur IBA University",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "BSCS Present (1st semester)",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 1,
                                    height: 100,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    width: 200,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 25),
                                        Text(
                                          "MTB College SDK",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "Intermedite in Computer Science",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 1,
                                    height: 100,
                                    color: Colors.white,
                                  ),
                                  Container(
                                    width: 200,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 25),
                                        Text(
                                          "Model high School",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Text(
                                          "Sadiqabad - Secondary School",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
