import 'package:flutter/material.dart';
import 'package:juiceapp/detail_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.list_outlined,
              size: 30,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag_outlined,
                size: 30,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: 320,
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      prefixIcon: const Icon(Icons.search_outlined),
                      hintText: "Search Here",
                      hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 238, 234, 234),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(40))),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: size.width / 100 * 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Menu",
                          style: TextStyle(
                              color: Colors.pink[200],
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        ListView.separated(
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                                  height: 5,
                                ),
                            //physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 10, //item count badayexi render aauxa
                            itemBuilder: (context, index) => Container(
                                  height: 55,
                                  color: const Color(0xfffbd9d5),
                                  child: Center(
                                      child: Text(
                                    "Menu List",
                                    style: TextStyle(
                                        color: Colors.grey[600],
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  )),
                                ))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fresh Juices",
                          style: TextStyle(
                              color: Colors.pink[200],
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const DetailPage(),
                                    ));
                              },
                              child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromARGB(
                                        255, 244, 240, 240),
                                  ),
                                  child: Image.asset(
                                    "assets/juice.png",
                                    fit: BoxFit.contain,
                                  )),
                            );
                          },
                          itemCount: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "See More",
                              style: TextStyle(color: Colors.pink[200]),
                            ),
                          ],
                        ),
                        Text(
                          "Fresh Juices",
                          style: TextStyle(
                              color: Colors.pink[200],
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemBuilder: (context, index) {
                            return Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 244, 240, 240),
                                ),
                                child: Image.asset(
                                  "assets/juicelogo.png",
                                  fit: BoxFit.contain,
                                ));
                          },
                          itemCount: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "See More",
                              style: TextStyle(color: Colors.pink[200]),
                            ),
                          ],
                        ),
                        // Text(
                        //   "Fresh Juices",
                        //   style: TextStyle(
                        //       color: Colors.pink[200],
                        //       fontSize: 18,
                        //       fontWeight: FontWeight.w400),
                        // ),
                        // GridView.builder(
                        //   shrinkWrap: true,
                        //   physics: const ScrollPhysics(),
                        //   gridDelegate:
                        //       const SliverGridDelegateWithFixedCrossAxisCount(
                        //           crossAxisCount: 2,
                        //           crossAxisSpacing: 10,
                        //           mainAxisSpacing: 10),
                        //   itemBuilder: (context, index) {
                        //     return Container(
                        //         height: 100,
                        //         decoration: BoxDecoration(
                        //           borderRadius: BorderRadius.circular(10),
                        //           color: const Color.fromARGB(255, 244, 240, 240),
                        //         ),
                        //         child: Image.asset(
                        //           "assets/juice.png",
                        //           fit: BoxFit.contain,
                        //         ));
                        //   },
                        //   itemCount: 4,
                        // ),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.end,
                        //   children: [
                        //     Text(
                        //       "See More",
                        //       style: TextStyle(color: Colors.pink[200]),
                        //     ),
                        //   ],
                        // )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
