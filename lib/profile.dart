import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainProfile extends StatefulWidget {
  const MainProfile({Key? key}) : super(key: key);

  @override
  State<MainProfile> createState() => MainProfileState();
}

class MainProfileState extends State<MainProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("PROFILE"),
        centerTitle: true,
        actions: const [Icon(Icons.more_vert)],
        backgroundColor: Color.fromARGB(255, 59, 160, 175),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Profilehead(),
          Container(
            height: 200,
            color: Colors.red,
          ),
          Expanded(
            child: Container(
              height: 200,
            ),
          ),
        ],
      )),
    );
  }
}

class Profilehead extends StatefulWidget {
  const Profilehead({Key? key}) : super(key: key);

  @override
  State<Profilehead> createState() => _ProfileheadState();
}

class _ProfileheadState extends State<Profilehead> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage('/image/hotel1.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Text(
                "Nguyen Trung Tin",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 166, 201, 207)),
              ),
            )
          ],
        )
      ],
    );
  }
}
