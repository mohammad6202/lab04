import 'package:flutter/material.dart';
import 'package:lab04/screenone.dart';
import 'package:lab04/screentwo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
          ),
          body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://www.news-medical.net/image.axd?picture=2021%2F3%2Fshutterstock_1236746887.jpg"))),
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Welcome To the Meditation Site",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber[300],
                          shadowColor: Colors.black,
                          elevation: 20),
                      onPressed: (() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return screenOne();
                        }));
                      }),
                      icon: Icon(Icons.travel_explore),
                      label: Text(
                        "Places to meditate",
                        style: TextStyle(fontSize: 20),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber[300],
                          shadowColor: Colors.black,
                          elevation: 20),
                      onPressed: (() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return screenTwo();
                        }));
                      }),
                      icon: Icon(Icons.person),
                      label: Text(
                        "Information",
                        style: TextStyle(fontSize: 20),
                      ))
                ],
              )),
        ));
  }
}
