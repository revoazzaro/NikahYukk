import 'package:flutter/material.dart';

class trendingpage extends StatefulWidget {
  const trendingpage({Key? key}) : super(key: key);

  @override
  State<trendingpage> createState() => _trendingpageState();
}

class _trendingpageState extends State<trendingpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 64),
          child: Column(
            children: <Widget>[
              Text("Trending", style: TextStyle(fontSize: 22, color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60,),
              Container(
                width: 450,
                height: 255,
                decoration: BoxDecoration(color: Color(0xFFFFFEF3)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4, right: 305),
                      child: Text("Teratas", style: TextStyle(fontFamily: "Poppins", fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 11),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                width: 170,
                                height: 178,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(image: AssetImage("assets/undangan4.jpg")),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("4,8", style: TextStyle(fontSize: 12, color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w600),),
                                  SizedBox(width: 6,),
                                  Icon(Icons.star, color: Colors.yellow, size: 17,),
                                  Icon(Icons.star, color: Colors.yellow, size: 17,),
                                  Icon(Icons.star, color: Colors.yellow, size: 17,),
                                  Icon(Icons.star, color: Colors.yellow, size: 17,),
                                  Icon(Icons.star_half_outlined, color: Colors.yellow, size: 17,),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                width: 170,
                                height: 178,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(image: AssetImage("assets/undangan5.jpg")),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("4,8", style: TextStyle(fontSize: 12, color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w600),),
                                  SizedBox(width: 6,),
                                  Icon(Icons.star, color: Colors.yellow, size: 17,),
                                  Icon(Icons.star, color: Colors.yellow, size: 17,),
                                  Icon(Icons.star, color: Colors.yellow, size: 17,),
                                  Icon(Icons.star, color: Colors.yellow, size: 17,),
                                  Icon(Icons.star_half_outlined, color: Colors.yellow, size: 17,),
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                width: 170,
                                height: 178,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(image: AssetImage("assets/undangan2.jpg")),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("4,8", style: TextStyle(fontSize: 12, color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w600),),
                                  SizedBox(width: 6,),
                                  Icon(Icons.star, color: Colors.yellow, size: 17,),
                                  Icon(Icons.star, color: Colors.yellow, size: 17,),
                                  Icon(Icons.star, color: Colors.yellow, size: 17,),
                                  Icon(Icons.star, color: Colors.yellow, size: 17,),
                                  Icon(Icons.star_half_outlined, color: Colors.yellow, size: 17,),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 80,),
              Container(
                height: 250,
                width: 450,
                decoration: BoxDecoration(color: Color(0xFFFFF3F3)),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 4, right: 200),
                    child: Text("Paling Banyak Disukai", style: TextStyle(fontFamily: "Poppins", fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                   ),
                   SizedBox(height: 11,),
                   SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                width: 170,
                                height: 178,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(image: AssetImage("assets/undangan4.jpg")),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.thumb_up_alt_rounded, color: Colors.black54, size: 21,),
                                  SizedBox(width: 6,),
                                  Text("567.K", style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w400),)
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                width: 170,
                                height: 178,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(image: AssetImage("assets/undangan5.jpg")),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.thumb_up_alt_rounded, color: Colors.black54, size: 21,),
                                  SizedBox(width: 6,),
                                  Text("457.K", style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w400),)
                                ],
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                width: 170,
                                height: 178,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(image: AssetImage("assets/undangan2.jpg")),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))
                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.thumb_up_alt_rounded, color: Colors.black54, size: 21,),
                                  SizedBox(width: 6,),
                                  Text("153.K", style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w400),)
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
