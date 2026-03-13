import 'package:flutter/material.dart';

class Answerhw2 extends StatefulWidget {
  const Answerhw2({super.key});

  @override
  State<Answerhw2> createState() => _Answerhw2State();
}

class _Answerhw2State extends State<Answerhw2> {
  var idController = TextEditingController();
  var nameController = TextEditingController();
  var scoreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Demo Student",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Student Information",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            _bulidTextFeild(hint: "Enter Student ID"),
            SizedBox(height: 20),
            _bulidTextFeild(hint: "Enter Student Name"),
            SizedBox(height: 20),
            _bulidTextFeild(hint: "Enter Student Score"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
               
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown, foregroundColor: Colors.white),
              child: Text("Submit"),
            ),
          ],
        ),
      )),
    );
  }

  Widget _bulidTextFeild(
      {String? hint, String? label, TextEditingController? controller}) {
    return Column(
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            labelText: label,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 3,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black,
                width: 4,
              ),
            ),
          ),
        )
      ],
    );
  }
}
