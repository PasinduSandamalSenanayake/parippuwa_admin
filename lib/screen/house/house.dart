import 'package:flutter/material.dart';
import 'package:parippuwa_admin/screen/house/add_house.dart';

class House extends StatefulWidget {
  const House({super.key});

  @override
  State<House> createState() => _HouseState();
}

class _HouseState extends State<House> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("House"),
          backgroundColor: Colors.lightGreen,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddHouse()),
            );
          },
          backgroundColor: Colors.lightGreen,
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ));
  }
}
