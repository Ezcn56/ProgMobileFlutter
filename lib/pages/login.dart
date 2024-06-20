import 'dart:async';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  String savedEmail = 'enzo.cingoli@gmail.com';
  String savedPassword = 'Progmob' ;
  String? insertedEmail = '';
  String? insertedPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Container(
        decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/fitness_finests.jpeg'),
                fit: BoxFit.cover
              )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 1,),
            Text(
              'Benvenuto alla \n MyGym',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
                fontSize: 32,
                fontStyle: FontStyle.normal,
              ),
            ),
            Spacer(flex: 2,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                onChanged: (value){
                  insertedEmail = value;
                },
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.red
                ),
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Inserire email',
                  hintStyle: TextStyle(
                    color: Colors.red
                  ),
                  iconColor: Colors.red
                ),
              ),
            ),
            Spacer(flex: 1,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                onChanged: (value){
                  insertedPassword = value;
                },
                style: TextStyle(
                  color: Colors.red,
                ),
                obscureText: true,
                decoration: InputDecoration(
                    icon: Icon(Icons.key),
                    hintText: 'Inserire Password',
                    hintStyle: TextStyle(
                      color: Colors.red
                    ),
                    iconColor: Colors.red
                ),
              ),
            ),
            Spacer(flex: 1,),
            ElevatedButton(
                onPressed: (){
                  SnackBar snackBar;
                  if(insertedEmail == savedEmail && insertedPassword == savedPassword){
                    Navigator.pushNamed(context, '/home');
                    snackBar = SnackBar(
                        content: const Text('Login Succesfull'));
                  }else {
                    snackBar = SnackBar(
                        content: const Text('Login Failed'));
                  }
                    Timer(Duration(milliseconds: 300), (){
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    });
                },
                child: Text('LOGIN')
            ),
            Spacer(flex: 3,)
          ],
        ),
      ),
    );
  }
}
