import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: SafeArea(
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.4,
            height: size.height,
            child: ListView.separated(
                padding: const EdgeInsets.all(20),
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) => Container(
                      height: size.height * 0.08,
                      color: const Color(0xfffbd9d5),
                      child: const Center(
                        child: Text(
                          "Sweets",
                          //textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
                itemCount: 16),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 244, 240, 240),
                      image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assets/juicelogo.png",
                        ),
                      )),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
