import 'package:flutter/material.dart';
import 'package:juiceapp/location_page.dart';

class SearchTickets extends StatefulWidget {
  const SearchTickets({super.key});

  @override
  State<SearchTickets> createState() => _SearchTicketsState();
}

class _SearchTicketsState extends State<SearchTickets> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 234, 241),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(10, 40, 30, 10),
            height: size.height / 2 * 0.7,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 147, 101, 211),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back,
                            color: Colors.white, size: 35)),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        alignment: Alignment.center,
                        onPressed: () {},
                        icon: const Icon(
                          size: 23,
                          Icons.person,
                          color: Color.fromARGB(255, 147, 101, 211),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Column(
                    children: [
                      Text(
                        "Hi John",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Bus',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180, left: 20),
            child: ListView.separated(
              padding: const EdgeInsets.fromLTRB(0, 40, 40, 0),
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(
                height: 30,
              ),
              itemBuilder: (context, index) => const SizedBox(
                height: 190,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.telegram,
                                  color: Colors.green,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("From:"),
                                    Text(
                                      "Location 1",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundColor:
                                      Color.fromARGB(255, 147, 101, 211),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("To:"),
                                    Text(
                                      "Location 2",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        CircleAvatar(
                          radius: 23,
                          child: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_upward,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.arrow_downward,
                                  size: 19,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              itemCount: 2,
            ),
          ),
          Positioned(
              bottom: 100,
              left: 80,
              child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.fromLTRB(80, 14, 80, 14)),
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 147, 101, 211))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LocationPage()));
                  },
                  child: const Text(
                    "Search",
                    style: TextStyle(color: Colors.white),
                  )))
        ],
      ),
    );
  }
}
