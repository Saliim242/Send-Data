import 'package:flutter/material.dart';
import 'package:send_data/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String FullName = "Hassan Abdirizak Mohamed";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Screen One'),
        actions: [
          PopupMenuButton(
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text("Write  What You Need"),
              ),
              PopupMenuItem(
                child: Text("Write  What You Need"),
              ),
              PopupMenuItem(
                child: Text("Write  What You Need"),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset("images/img.jpeg"),
          SizedBox(height: 10),
          Text(
            FullName,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(15),
            ),
            onPressed: () {
              var route = MaterialPageRoute(
                builder: (_) => SecondScreen(
                  img: "images/img.jpeg",
                  name: "Hassan Abdirizak Mohamed",
                ),
              );
              Navigator.push(context, route);
            },
            child: Text(
              "Go Second Screen",
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
