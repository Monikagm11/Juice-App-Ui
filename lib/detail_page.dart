import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey[700],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
            color: Colors.grey[700],
          )
        ],
        title: Text(
          "Details",
          style: TextStyle(color: Colors.grey[700]),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xfffbd9d5),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 25, right: 25),
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xfffbd9d5), Color(0xfffcd9d5)])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Image.asset(
                "assets/juicetop.png",
                fit: BoxFit.contain,
                height: 300,
                width: 300,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Strawberry Juice",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[800]),
                  ),
                ],
              ),
              Text(
                "Each (200g-400g)",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700]),
              ),
              Row(
                children: [
                  RatingBar.builder(
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      minRating: 1,
                      itemSize: 30,
                      initialRating: 3.5,
                      //unratedColor: const Color.fromARGB(255, 231, 220, 176),
                      itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber[500],
                          ),
                      onRatingUpdate: (rating) => print(rating)),
                  const Text("(30)")
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                "Description of given product",
                textAlign: TextAlign.start,
              ),
              const Text(
                "Read More",
                style: TextStyle(
                    color: Color.fromARGB(255, 252, 170, 161),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          //color: const Color.fromARGB(255, 252, 140, 127),
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(255, 234, 133, 166),
                                Color.fromARGB(255, 236, 51, 37)
                              ])),
                      child: const Icon(
                        Icons.restore,
                        color: Colors.white,
                        size: 40,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Delivery Time",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[700]),
                      ),
                      Text(
                        "45min to 1hour",
                        style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    children: [
                      Text(
                        "Total Price",
                        style: TextStyle(fontSize: 19),
                      ),
                      Text(
                        "\$100.00",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.only(
                                left: 40, right: 40, top: 10, bottom: 10)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.red[200])),
                    child: const Text(
                      "Add To Cart",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
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
