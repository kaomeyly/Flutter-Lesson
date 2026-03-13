import 'package:flutter/material.dart';

class Homework1 extends StatelessWidget {
  const Homework1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProfile(context),
          SizedBox(height: 10),
          _buildBody(),
          SizedBox(height: 20),
          _buildIcon(),
        ],
      ),
    );
  }

  Widget _buildProfile(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 250,
          width: MediaQuery.sizeOf(context).width,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: 200,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.redAccent,
                  child: Image.network(
                      "https://www.kimviettravel.com/wp-content/uploads/2016/02/Cambodia-1.jpg",
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 20,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(80),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/736x/58/ce/00/58ce00d22ec9f2ce0e813f23b210da82.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            "Pizza",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Menu : ",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 219, 129, 235)),
              ),
              Text(
                " Flower",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Quantity",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown),
              ),
              Text(
                "  4",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Icon(Icons.local_dining, color: Colors.blue),
            Text('Feed')
          ],
        ),
        Column(
          children: [Icon(Icons.favorite, color: Colors.red), Text('Walk')],
        ),
        Column(
          children: [
            Icon(Icons.accessibility_new, color: Colors.orange),
            Text('Feed')
          ],
        ),
        Column(
          children: [
            Icon(Icons.accessibility_new_rounded, color: Colors.green),
            Text('Feed')
          ],
        ),
      ],
    );
  }
}
