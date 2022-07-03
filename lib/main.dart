import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool secureText = true;

  final _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/image.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  controller: _name,
                  //obscureText: secureText,
                  decoration: InputDecoration(
                      hintText: 'Name',
                      label: Text('Enter Your Name'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  obscureText: secureText,
                  decoration: InputDecoration(
                      hintText: 'Name',
                      label: Text('Enter Your Name'),
                      suffixIcon: IconButton(
                        icon: secureText
                            ? Icon(Icons.remove_red_eye)
                            : Icon(Icons.shield_moon_outlined),
                        onPressed: () {
                          setState(() {
                            secureText = !secureText;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print(_name.text);
                    },
                  child: Text('Login'))
            ],
          ),
        ),
      ),
    );;
  }
}
