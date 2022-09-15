import 'package:flutter/material.dart';
import 'package:lab04/Home.dart';

class screenOne extends StatefulWidget {
  const screenOne({super.key});

  @override
  State<screenOne> createState() => _screenOneState();
}

class _screenOneState extends State<screenOne> {
  bool place = false;
  bool place1 = false;
  bool place2 = false;
  @override
  State<screenOne> createState() => _screenOneState();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red[300],
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://images.pexels.com/photos/2531237/pexels-photo-2531237.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"))),
            child: Column(
              children: [
                Text(
                  "Here Are Some Places to meditate",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                CheckboxListTile(
                    title: Text(
                      "Beaches",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "UAE",
                      style: TextStyle(color: Colors.white),
                    ),
                    secondary: Icon(
                      Icons.beach_access,
                      color: Colors.white,
                    ),
                    selected: true,
                    value: place,
                    onChanged: ((val) {
                      setState(() {
                        place = val!;
                      });
                    })),
                CheckboxListTile(
                    title: Text(
                      "Mountains",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Jordan",
                      style: TextStyle(color: Colors.white),
                    ),
                    secondary: Icon(
                      Icons.hiking_rounded,
                      color: Colors.white,
                    ),
                    selected: true,
                    value: place1,
                    onChanged: ((val) {
                      setState(() {
                        place1 = val!;
                      });
                    })),
                CheckboxListTile(
                    title: Text(
                      "Forests",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "Thailand",
                      style: TextStyle(color: Colors.white),
                    ),
                    secondary: Icon(
                      Icons.forest,
                      color: Colors.white,
                    ),
                    selected: true,
                    value: place2,
                    onChanged: ((val) {
                      setState(() {
                        place2 = val!;
                      });
                    })),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[300],
                        shadowColor: Colors.black,
                        elevation: 20),
                    onPressed: (() {
                      setState(() {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (context) {
                          return Home();
                        }));
                      });
                    }),
                    icon: Icon(Icons.home),
                    label: Text(
                      "Go back to Home Page",
                      style: TextStyle(fontSize: 25),
                    ))
              ],
            ),
          ),
        ));
  }
}
