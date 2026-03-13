import 'package:flutter/material.dart';

class Practice6 extends StatefulWidget {
  const Practice6({super.key});

  @override
  State<Practice6> createState() => _Practice6State();
}

class _Practice6State extends State<Practice6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Student Information",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text("Student ID"),
                TextField(
                  decoration: InputDecoration(
                    hintText: "បញ្ចូល​",
                    labelText: "Email",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        "assets/icons/iconemail.png",
                        width: 10,
                        height: 10,
                        fit: BoxFit.cover,
                      ),
                    ),
                    suffixIcon: Icon(Icons.visibility),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
