import 'dart:html';

import 'package:flutter/material.dart';

Widget RoomCart(
    String hotelname,
    String address,
    String id,
    String decrisp,
    String numroom,
    String numpeople,
    String price,
    String image,
    String type,
    DateTime startday,
    DateTime endday,
    String status,
    String money,
    String statuspay) {
  return Card(
      margin: EdgeInsets.only(right: 22.0),
      clipBehavior: Clip.antiAlias,
      elevation: 0.0,
      child: InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover, scale: 2.0)),
          )));
}
