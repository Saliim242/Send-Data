import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({required this.img, required this.name});

  final String img;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("You are in Second Screen"),
      ),
      body: Column(
        children: [
          Center(
            child: Image(
              image: AssetImage(img),
              height: 100,
              width: 300,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "$name",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(15),
              backgroundColor: Color(0xff112857),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Go Back to Screen One",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
