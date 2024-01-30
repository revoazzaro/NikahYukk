import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {


  Widget buildImageContainer(String imagePath) {
    return Container(
      width: 121,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.only(right: 22),
    );
  }

  Widget buildHorizontalListView(List<String> imagePaths) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return buildImageContainer(imagePaths[index]);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F1F1),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 18, top: 60),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "Welcome,",
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Text(
                  "Aura Aulia",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "Mau Undangan seperti apa hari ini?",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 59),
                buildHorizontalListView([
                  "assets/undangan1.jpg",
                  "assets/undangan2.jpg",
                  "assets/undangan3.jpg",
                  "assets/undangan3.jpg",
                ]),
                const SizedBox(height: 51),
                buildHorizontalListView([
                  "assets/undangan1.jpg",
                  "assets/undangan2.jpg",
                  "assets/undangan3.jpg",
                  "assets/undangan3.jpg",
                ]),
                const SizedBox(height: 51),
                buildHorizontalListView([
                  "assets/undangan1.jpg",
                  "assets/undangan2.jpg",
                  "assets/undangan3.jpg",
                  "assets/undangan3.jpg",
                ]),
              ],
            ),
          ),
        ),
      ),
    
    );
  }
}