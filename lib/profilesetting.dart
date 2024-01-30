import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class profilesetting extends StatefulWidget {
  const profilesetting({super.key});

  @override
  State<profilesetting> createState() => _profilesettingState();
}

class _profilesettingState extends State<profilesetting> {
  bool passwordVisible = true;
  @override
  Widget build(BuildContext context) {
  final MediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQueryHeight * 0.06,),
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Row(
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back, size: 38,),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },),
                    SizedBox(width: 78,),
                    Text("Setting Profile", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              SizedBox(height: 32,),
              Container(
                width: 450,
                height: 731,
                decoration: ShapeDecoration(
                  color: Color(0xFFF3F9FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 17, left: 7),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 103,
                        height: 103,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("assets/profileOP.jpg")
                          , fit: BoxFit.cover),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                   color: Colors.white,
                                ),
                                child: Icon(Icons.edit_outlined, size: 20,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Aura Aulia", style: TextStyle(fontSize: 23, fontFamily: "Poppins", fontWeight: FontWeight.w500),),
                      SizedBox(height: 3,),
                      Text("aura@gmail.com", style: TextStyle(fontSize: 14, color: Colors.black),),
                      SizedBox(height: 33,),
                      Container(
                        padding: EdgeInsets.only(left: 44, right: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Nama Lengkap", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                            SizedBox(height: 8,),
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email_outlined, size: 22, color: Colors.black,),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),
                                borderSide: BorderSide(color: Colors.black),
                                ),
                                hintText: "Aura Aulia"
                              ),
                            ),
                            SizedBox(height: 30,),
                            Text("E-Mail", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                            SizedBox(height: 8,),
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email_outlined, size: 22, color: Colors.black,),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),
                                borderSide: BorderSide(color: Colors.black)
                                ),
                                hintText: "aura@gmail"
                              ),
                            ),
                            SizedBox(height: 30,),
                            Text("No Telepon", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                            SizedBox(height: 8,),
                            TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email_outlined, size: 22, color: Colors.black,),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),
                                borderSide: BorderSide(color: Colors.black)
                                ),
                              ),
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              
                            ),
                            SizedBox(height: 30,),
                            Text("Password", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600,),),
                            SizedBox(height: 8,),
                            TextField(
                              obscureText: passwordVisible,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.key_outlined, size: 22, color: Colors.black,),
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),
                                borderSide: BorderSide(color: Colors.black),
                                ),
                                suffixIcon: IconButton(icon: Icon(passwordVisible ? Icons.visibility_off_rounded : Icons.visibility,color: Colors.black,),
                                onPressed: () {
                                  setState(() {
                                    passwordVisible = !passwordVisible;
                                  });
                                },
                                )
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 21,),
                      Container(
                        padding: EdgeInsets.only(left: 250),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextButton(child: Text("Save", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600, fontFamily: "Poppins"),),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                                      content: Text("Yakin Untuk Menyimpan?", textAlign: TextAlign.center, style: TextStyle(fontSize: 14,fontFamily: "Poppins", fontWeight: FontWeight.w500),),
                                      backgroundColor: Colors.white,
                                      actions: <Widget>[
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: <Widget>[
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text("Tidak", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: "Poppins"),)
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text("Ya", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: "Poppins"),)
                                            )
                                          ],
                                        )
                                      ],
                                    );
                                  } 
                                );
                              },)
                            ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}