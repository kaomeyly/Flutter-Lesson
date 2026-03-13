import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homework/resultpage2.dart';

class Homework2 extends StatefulWidget {
  const Homework2({super.key});

  @override
  State<Homework2> createState() => _Homework2State();
}

class _Homework2State extends State<Homework2> {
  var idController = TextEditingController();
  var nameController = TextEditingController();
  var scoreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Route Parameter Demo"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                "Student Information",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(height: 30),
            _bulidTextFeild(
              label: "Student ID",
              hint: "Enter Student ID",
              icon: Icon(Icons.numbers_outlined),
              controller: idController,
            ),
            SizedBox(height: 30),
            _bulidTextFeild(
              label: "Student Name",
              hint: "Enter Student Name",
              icon: Icon(Icons.person),
              controller: nameController,
            ),
            SizedBox(height: 30),
            _bulidTextFeild(
              label: "Student Score",
              hint: "Enter Student Score",
              icon: Icon(Icons.score_outlined),
              controller: scoreController,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (idController.text.isEmpty ||
                    nameController.text.isEmpty ||
                    scoreController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content:
                          Text("Please fill all fields before submitting!"),
                      backgroundColor: Colors.deepPurple,
                    ),
                  );
                  return;
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      studentId: idController.text,
                      studentName: nameController.text,
                      studentScore: scoreController.text,
                    ),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bulidTextFeild({
    String? label,
    String? hint,
    Widget? icon,
    TextEditingController? controller,
  }) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hint,
              labelText: label,
              suffixIcon: icon,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.deepOrange,
                  width: 3,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black54,
                  width: 4,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
