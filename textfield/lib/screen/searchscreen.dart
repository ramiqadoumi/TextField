import 'package:flutter/material.dart';
import 'package:textfield/loginscreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextField(
              decoration: InputDecoration(
                  label: Text("Search"),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 2),
                  hintText: "Find your friendes "),
            ),
            Container(
                        padding: EdgeInsets.all(20),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(20)
                          ),
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context, MaterialPageRoute(builder: (context) {
                                  return MyApp();
                                },));
                              });
                            },
                            icon: Icon(Icons.arrow_back),
                            label: Text("Back to home page")),
                      ),
          ]),
        ),
      ),
    );
  }
}
