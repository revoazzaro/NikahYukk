import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class registerpage extends StatefulWidget {
  const registerpage({super.key});

  @override
  State<registerpage> createState() => _registerpageState();
}

class _registerpageState extends State<registerpage> {
  bool passwordVisible = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/foto.png"),
            fit: BoxFit.cover)
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: MediaQueryHeight * 0.1,),
                Text("Menuju Yang Halal", style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w400, fontFamily: 'Bonheur Royale', height: 0),),
                Text("Ayo Menikah", style: TextStyle(
                  color: Colors.white, fontSize: 40, fontWeight: FontWeight.w400, fontFamily: 'Bonheur Royale', height: 0),),
                Text("Aplikasi jasa pembuatan undangan pernikahan", style: TextStyle(
                  color: Colors.white, fontSize: 12, fontWeight: FontWeight.w200, fontFamily: 'Poppins'),
                ),
                SizedBox(height: 90),
                Container(
                  width: 450,
                  height: 579,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 47, top: 30, right: 42),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Nama Lengkap", style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Poppins", fontWeight: FontWeight.w600),),
                        SizedBox(height: 8,),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined, color: Colors.black, size: 30),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(color: Colors.black)
                            ),
                            hintText: "Aura Aulia",
                          ),
                        ),
                        SizedBox(height: 12),
                        Text("Email", style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Poppins", fontWeight: FontWeight.w600),),
                        SizedBox(height: 8,),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined, color: Colors.black, size: 30,),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(color: Colors.black)
                            ),
                            hintText: "aura@gmail.com",
                          ),
                        ),
                        SizedBox(height: 12),
                        Text("No Telepon", style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Poppins", fontWeight: FontWeight.w600),),
                        SizedBox(height: 8,),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined, color: Colors.black, size: 30,),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(color: Colors.black)
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                        SizedBox(height: 12),
                        Text("Password", style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Poppins", fontWeight: FontWeight.w600),),
                        SizedBox(height: 8,),
                        TextField(
                          obscureText: passwordVisible,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.key_outlined, color: Colors.black54),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
                            suffixIcon: IconButton(icon: Icon(passwordVisible ?Icons.visibility_off_rounded : Icons.visibility_rounded,
                            color: Colors.black ),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            }),
                          ),
                        ),
                        SizedBox(height: 40),
                        Container(
                          width: 380,
                          height: 49,
                          decoration: ShapeDecoration(
                            color: Color(0xFF814A26),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))
                          ),
                          child: Center(
                            child: Text("Register", style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: "Poppins", fontWeight: FontWeight.w600),)),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Have Account?", style: TextStyle(color: Colors.black, fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w600),),
                            SizedBox(width: 8),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "loginpage");
                              },
                              child: Text("Login", style: TextStyle(color: Color(0xFF333333), fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w600),))
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


