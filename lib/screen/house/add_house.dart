import 'package:flutter/material.dart';

class AddHouse extends StatefulWidget {
  const AddHouse({super.key});

  @override
  State<AddHouse> createState() => _AddHouseState();
}

class _AddHouseState extends State<AddHouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add House"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              location(),
              SizedBox(
                height: 10,
              ),
              price(),
              SizedBox(
                height: 10,
              ),
              description(),
              SizedBox(
                height: 10,
              ),
              contact(),
              SizedBox(
                height: 10,
              ),
              add_button()
            ],
          ),
        ),
      ),
    );
  }

  Widget location() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          hintText: "Location",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xffc5c5c5),
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.lightGreen,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget price() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          hintText: "per month",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xffc5c5c5),
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.lightGreen,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget description() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        maxLines: 3,
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          hintText: "description",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xffc5c5c5),
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.lightGreen,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget contact() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          hintText: "Mobile Number",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Color(0xffc5c5c5),
              width: 2.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.lightGreen,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget add_button() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ElevatedButton(
            onPressed: () {
              // Firestore_Datasource()
              //     .AddNote(description.text, title.text, indexx);
              // Navigator.pop(context);
            },
            child: Text("Add House"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Cancel",
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
