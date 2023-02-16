// ignore_for_file: annotate_overrides, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, unused_import, avoid_web_libraries_in_flutter, sized_box_for_whitespace, unused_field, prefer_final_fields

// import 'dart:html';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Test extends StatefulWidget {
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  bool _secureText = true;
  bool me = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://e1.pxfuel.com/desktop-wallpaper/814/699/desktop-wallpaper-whatsapp-top-whatsapp-backgrounds-access-1000x2106-for-your-mobile-tablet-whatsapp-aesthetic-thumbnail.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Welcome back!",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.4),
                        )),
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Login to you existing account",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color.fromARGB(255, 87, 86, 86),
                              letterSpacing: 1.0),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50)),
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWfLGU1UuJbLJoQWG0wJn6TXfp2ikLA3bL7Q&usqp=CAU",
                          fit: BoxFit.cover,
                          colorBlendMode: BlendMode.colorBurn,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 30, bottom: 10),
                      child: Text("Email Address",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(200, 88, 88, 88),
                              fontWeight: FontWeight.bold))),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          filled: true,
                          fillColor: Color.fromARGB(123, 158, 158, 158),
                          hintText: "  name@example.com",
                          hintStyle: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(188, 82, 79, 79)),
                          prefixIcon: Icon(Icons.mail),
                          prefixStyle:
                              TextStyle(color: Colors.black54, fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  style: BorderStyle.none,
                                  color: Color.fromARGB(176, 168, 159, 159),
                                  width: 1.5)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ))),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 30, bottom: 10),
                      child: Text("Password",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(200, 88, 88, 88),
                              fontWeight: FontWeight.bold))),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    child: TextFormField(
                      obscureText: _secureText,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.remove_red_eye,
                              color: Color.fromARGB(144, 122, 122, 121),
                              size: 30,
                            ),
                            onPressed: () {
                              setState(() {
                                _secureText = !_secureText;
                              });
                            },
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(123, 158, 158, 158),
                          hintText: "  Password",
                          hintStyle: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(188, 82, 79, 79)),
                          prefixIcon: Icon(Icons.key),
                          prefixStyle:
                              TextStyle(color: Colors.black54, fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Color.fromARGB(176, 168, 159, 159),
                                  width: 1.5)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.blue))),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Checkbox(
                              value: me,
                              onChanged: (val) {
                                setState(() {
                                  me = val!;
                                });
                              },
                            ),
                            Text("Remember me",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(200, 88, 88, 88),
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Container(
                        child: Text("Forget Password?",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                decorationThickness: 2,
                                decorationColor: Colors.blue)),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 15,
                          padding: EdgeInsets.symmetric(
                              horizontal: 150, vertical: 12)),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 40, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      color: Colors.blue,
                      icon: Icon(MdiIcons.google,
                          size: 50,
                          color: Color.fromARGB(160, 255, 38, 0),
                          shadows: <Shadow>[
                            Shadow(
                                color: Color.fromARGB(166, 0, 0, 0),
                                blurRadius: 15.0)
                          ]),
                      onPressed: () {},
                    ),
                    IconButton(
                      color: Colors.blue,
                      icon: Icon(MdiIcons.facebook, size: 50, shadows: <Shadow>[
                        Shadow(
                            color: Color.fromARGB(166, 0, 0, 0),
                            blurRadius: 15.0)
                      ]),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(MdiIcons.instagram,
                          size: 50,
                          color: Colors.red.shade700,
                          shadows: <Shadow>[
                            Shadow(
                                color: Color.fromARGB(166, 0, 0, 0),
                                blurRadius: 15.0)
                          ]),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont't have an account? ",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromARGB(118, 0, 0, 0))),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        decorationThickness: 2),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              alignment: Alignment.topLeft,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.4),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        "Please Enter Your Information Below To Sign Up",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromARGB(255, 87, 86, 86),
                            letterSpacing: 1.0),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50)),
                      child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWfLGU1UuJbLJoQWG0wJn6TXfp2ikLA3bL7Q&usqp=CAU",
                        fit: BoxFit.cover,
                        colorBlendMode: BlendMode.colorBurn,
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 35, bottom: 10),
                      child: Text("Name",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(200, 88, 88, 88),
                              fontWeight: FontWeight.bold))),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                    child: Material(
                      elevation: 15.0,
                      shadowColor: Colors.black,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          filled: true,
                          fillColor: Color.fromARGB(188, 218, 214, 214),
                          hintText: "  Please Enter Your Name",
                          hintStyle: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(188, 82, 79, 79)),
                          prefixIcon: Icon(Icons.person),
                          prefixStyle:
                              TextStyle(color: Colors.black54, fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  style: BorderStyle.none,
                                  color: Color.fromARGB(176, 168, 159, 159),
                                  width: 1.5)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 35, bottom: 10),
                      child: Text("Email",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(200, 88, 88, 88),
                              fontWeight: FontWeight.bold))),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                    child: Material(
                      elevation: 15.0,
                      shadowColor: Colors.black,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            filled: true,
                            fillColor: Color.fromARGB(57, 158, 158, 158),
                            hintText: "  Please Enter Your Email",
                            hintStyle: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(188, 82, 79, 79)),
                            prefixIcon: Icon(Icons.email),
                            prefixStyle:
                                TextStyle(color: Colors.black54, fontSize: 18),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    style: BorderStyle.none,
                                    color: Color.fromARGB(176, 168, 159, 159),
                                    width: 1.5)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                ))),
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 35, bottom: 10),
                      child: Text("Password",
                          style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(200, 88, 88, 88),
                              fontWeight: FontWeight.bold))),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                    child: Material(
                      elevation: 15.0,
                      shadowColor: Colors.black,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(0),
                            filled: true,
                            fillColor: Color.fromARGB(68, 158, 158, 158),
                            hintText: " Please Enter Your Password",
                            hintStyle: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(188, 82, 79, 79)),
                            prefixIcon: Icon(Icons.lock_outline_sharp),
                            prefixStyle:
                                TextStyle(color: Colors.black54, fontSize: 18),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    style: BorderStyle.none,
                                    color: Color.fromARGB(176, 168, 159, 159),
                                    width: 1.5)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                ))),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 15,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 150, vertical: 12)),
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 20),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont't have an account? ",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(118, 0, 0, 0))),
                      Text(
                        "Sign in",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue,
                            decorationThickness: 2),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
