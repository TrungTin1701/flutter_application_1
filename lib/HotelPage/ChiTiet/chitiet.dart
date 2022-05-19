import 'package:flutter/material.dart';
import 'package:flutter_application_1/Profile/profile.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/HotelPage/hotelcart.dart';

class chitiet extends StatefulWidget {
  const chitiet({Key? key}) : super(key: key);

  @override
  State<chitiet> createState() => _chitietState();
}

class _chitietState extends State<chitiet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return MyApp();
            }));
          },
          child: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text("BOOKING HOTEL ROOM"),
        centerTitle: true,
        actions: const [Icon(Icons.more_vert)],
        backgroundColor: Color.fromARGB(255, 59, 160, 175),
      ),
      body: Column(
        children: [
          HotelCard(
              '/image/hotel2.jpg', 'Dat lat pho', '400 Ung Van khiem', context)
        ],
      ),
    );
  }
}
