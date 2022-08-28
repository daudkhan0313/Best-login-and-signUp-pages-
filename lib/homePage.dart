// ignore_for_file: prefer_const_constructors

import 'package:container_change_colors/register.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formkey=GlobalKey<FormState>();
  moveToregisterPage(BuildContext context) async{
    if(_formkey.currentState!.validate()){
    // ignore: prefer_const_constructors
    await Navigator.of(context).push(MaterialPageRoute(builder: (context)=>registerPage()));   
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 84, 27, 94),
      body: Column(children: [
        Container(
          height: 170,
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Text(
              'LogIn',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "urduFont/new.ttf"),
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
          key: _formkey,
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 40.0, left: 15, right: 15, bottom: 5),
              child: SizedBox(
                height: 50,
                child: TextFormField(
                  validator: (value){
                    if(value!.isEmpty){
                      return "Email cannot be empty";
                    }
                    return null;
                  },
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
                child: TextFormField(
                  obscureText: true,
                   validator: (value){
                    if(value!.isEmpty){
                      return "Password cannot be empty";
                    }else if (value.length<8){
                      return "Please enter atleast 8 charecter";
                    }
                    return null;
                  },
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
            ElevatedButton(onPressed: () => moveToregisterPage(context), child: Text('LogIn')),
            TextButton(
              onPressed: () {},
              child: Text(
                'forgoten Password',
              ),
            )
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
              'I have not Account',
              style: TextStyle(color: Colors.white),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => registerPage()));
                },
                child: Text('Create Account'))
          ]),
        ),
      ]),
    );
  }
}
