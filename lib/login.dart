import 'package:flutter/material.dart';
import 'package:mencoba_kuis/home.dart';

class Login extends StatefulWidget {
  @override 
  State <Login> createState () => _LoginState();
  }
  class _LoginState extends State<Login> {
    String username= "";
    String paswword= "";
    bool isClicked= false;
  
  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Home(username: username,)
        )
    );
  }

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("WELCOME TO DUMMY RESTAURANT"),
          backgroundColor: Colors. green.shade200,
          centerTitle: true,
        ),
        body: Column(
          children : [
            Text("Silahkan Login terlebih dahulu untuk mengakses Menu Dummy ^^",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )
            ),
            usernameField(),
            passwordField(),
            LoginButton(context),
          ],
        ),
      ),
      );
  }
  Widget usernameField(){
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 300, vertical: 30),
        child: TextFormField(
          enabled: true,
          onChanged: (value){
            username = value;
          },

          decoration: InputDecoration(
            hintText: 'Username',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                width: 300,
              )
            )
          ),
        ),
        ),
    );
  }
  Widget passwordField(){
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 300, vertical: 10),
        child: TextFormField(
          enabled: true,
          onChanged: (value){
            paswword = value;
          },
          decoration: InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                width: 100,
              )
            )
          ),
        ),
      )
    );
  }
  
  Widget LoginButton(context){
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: isClicked == true
            ? WidgetStateProperty.all(Colors.blue)
            : WidgetStateProperty.all(Colors.red),
          ),
          onPressed: (){
            if (username=="aini istri zoro" && paswword=="124220141"){
              _navigateToHome();

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Login Berhasil")
                ),
                );
                setState() {
                  isClicked = !isClicked;
                  print(isClicked);
                }};
            },
            child: Text("Login"), 

        )
      )
          );
  }
  }
  