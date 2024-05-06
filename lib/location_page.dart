import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 234, 241),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 147, 101, 211),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 35,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_outlined,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: size.height / 2 * 0.6,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 147, 101, 211),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70)),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Location 1",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.compare_arrows_rounded,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  "Location 2",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 100),
          ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 30,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 220),
            itemCount: 2,
            itemBuilder: (context, index) => Stack(
              children: [
                Container(
                  height: 180,
                  width: size.width / 2 * 1.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.telegram,
                                  size: 35,
                                  color: Colors.green,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Location 1",
                                      style: TextStyle(color: Colors.purple),
                                    ),
                                    Text("Dubai"),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_rounded,
                                  size: 35,
                                  color: Colors.purple,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Location 2",
                                      style: TextStyle(color: Colors.purple),
                                    ),
                                    Text("Chile"),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  "Price:",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 171, 169, 169),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "\$180.00",
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(
                                            255, 147, 101, 211))),
                                onPressed: () {},
                                child: const Text(
                                  "Buy Ticket",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                // const Positioned(
                //   top: -2,
                //   child: CircleAvatar(
                //     backgroundColor: Colors.red,
                //     foregroundColor: Colors.white,
                //     radius: 18,
                //     child: Icon(
                //       Icons.bus_alert_rounded,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
