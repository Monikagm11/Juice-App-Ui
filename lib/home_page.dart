import 'package:flutter/material.dart';
import 'package:juiceapp/menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xfffbd9d5), Color(0xfffcd9d5)])),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height / 90 * 3,
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/home.png",
                  height: size.height * 0.5,
                  width: size.width / 1.2,
                  fit: BoxFit.fill,
                  alignment: Alignment.topCenter,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Book Sweet\nDelights Now!",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Sweets are like a symphony for the taste \nbuds,each bite a sweet note of delight",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 133, 132, 132)),
                    ),
                    Center(
                      child: Image.asset(
                        "assets/home1.png",
                        height: size.height / 100 * 23.4,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                   
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MenuPage(),
                        ));
                  },
                  child: Image.asset(
                    "assets/button.png",
                    height: 70,
                    alignment: Alignment.bottomRight,
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
