import 'package:flutter/material.dart';
import 'package:lab04/Home.dart';

class screenTwo extends StatefulWidget {
  const screenTwo({super.key});

  @override
  State<screenTwo> createState() => _screenTwoState();
}

class _screenTwoState extends State<screenTwo> {
  List country = [
    "United Arab Emiraties",
    "Thailand",
    "Indonesia",
    "Jordan",
    "Turkey"
  ];
  String statContry = "Jordan";

  String gender = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Information", style: TextStyle(fontSize: 30)),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSJmkplFXL2kbe-bs_ATv-0M-mot3z83dDyg&usqp=CAU"))),
            alignment: Alignment.center,
            child: Column(children: [
              Text(
                "Region",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              DropdownButton(
                  dropdownColor: Colors.cyan[100],
                  value: statContry,
                  items: country
                      .map((e) => DropdownMenuItem(
                            child: Text("$e"),
                            value: e,
                          ))
                      .toList(),
                  onChanged: ((val) {
                    setState(() {
                      statContry = val.toString();
                    });
                  })),
              SizedBox(
                height: 40,
              ),
              Text(
                "Gender",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              RadioListTile(
                  title: Text("Female"),
                  secondary: Icon(Icons.female),
                  value: "Fe",
                  groupValue: gender,
                  onChanged: ((val) {
                    setState(() {
                      gender = val.toString();
                    });
                  })),
              RadioListTile(
                  title: Text("Male"),
                  secondary: Icon(Icons.male),
                  value: "Ma",
                  groupValue: gender,
                  onChanged: ((val) {
                    setState(() {
                      gender = val.toString();
                    });
                  })),
              SizedBox(
                height: 60,
              ),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan.shade200,
                      shadowColor: Colors.cyanAccent,
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
                  label: Text("Go back to home",
                      style:
                          TextStyle(fontSize: 30, fontStyle: FontStyle.italic)))
            ])),
      ),
    );
  }
}
