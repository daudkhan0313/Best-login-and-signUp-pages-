// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// ignore: camel_case_types
class registerPage extends StatefulWidget {
  const registerPage({Key? key}) : super(key: key);

  @override
  State<registerPage> createState() => _registerPageState();
}

// ignore: camel_case_types
class _registerPageState extends State<registerPage> {
  var obsecaver = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      backgroundColor: Color.fromARGB(255, 84, 27, 94),
      body: Column(children: [
        Container(
          height: 170,
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
          decoration: BoxDecoration(
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(
                    3,
                    3,
                  ),
                  blurRadius: 7)
            ],
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(200)),
            color: Color.fromARGB(255, 77, 28, 82),
          ),
        ),
        Form(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 40.0, left: 15, right: 15, bottom: 5),
              child: SizedBox(
                height: 50,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: 'Enter Name',
                      labelStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(
                        Icons.person,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 15, right: 15, bottom: 5),
              child: SizedBox(
                height: 50,
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: 'Enter Email',
                      labelStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 15, right: 15, bottom: 30),
              child: SizedBox(
                height: 50,
                child: TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: 'Enter Password',
                      labelStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text('SignUp')),
          ],
        )),
        Spacer(),
        Container(
          height: 80,
          width: 360,
          decoration: BoxDecoration(
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(
                    1,
                    1,
                  ),
                  blurRadius: 7)
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(200), topRight: Radius.circular(0)),
            color: Color.fromARGB(255, 77, 28, 82),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'I have Account',
              style: TextStyle(color: Colors.white),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Back LogIn'))
          ]),
        ),
      ]),
    );
  }
}
