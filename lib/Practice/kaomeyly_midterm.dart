import 'package:flutter/material.dart';
import 'package:flutter_application_1/Practice/detail_page.dart';

class KaomeylyMidterm extends StatefulWidget {
  const KaomeylyMidterm({super.key});

  @override
  State<KaomeylyMidterm> createState() => _KaomeylyMidtermState();
}

class _KaomeylyMidtermState extends State<KaomeylyMidterm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Midterm Flutter",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        actions: [
          Icon(
            Icons.dark_mode_rounded,
            size: 30,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.sunny,
            size: 30,
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Text(
              "Top Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _header("Web Design", Colors.blue),
                  SizedBox(width: 10),
                  _header("IOS", Colors.purple),
                  SizedBox(width: 10),
                  _header("Business", Colors.orange),
                  SizedBox(width: 10),
                  _header("Marketing", Colors.green),
                  SizedBox(width: 10),
                  _header("UI/UX", Colors.red),
                  SizedBox(width: 10),
                  _header("Data Science", Colors.teal),
                ],
              ),
            ),
            SizedBox(height: 25),
            _title("Featured Courses"),
            SizedBox(height: 12),
            SizedBox(
              height: 230,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _itemCard("App development beginner guide", "Kao Meyly",
                      "https://picsum.photos/110"),
                  _itemCard("Fashion development beginner guide",
                      "Hurn Sreynin", "https://picsum.photos/230"),
                  _itemCard("Fashion beginner guide", "Kem Vanny",
                      "https://picsum.photos/250"),
                  _itemCard("UI/UX beginner", "Learg Kanchana",
                      "https://picsum.photos/222"),
                ],
              ),
            ),
            SizedBox(height: 25),
            _title("Popular Courses"),
            SizedBox(height: 12),
            _listitemCard("iOS app development", "Kao Meyly",
                "https://picsum.photos/310"),
            _listitemCard("Android app development", "Hurn Sreynin",
                "https://picsum.photos/131"),
            _listitemCard(
                "App UI Design", "Emma Wilson", "https://picsum.photos/232"),
            _listitemCard("Flutter Beginner Course", "Leag Kanchana",
                "https://picsum.photos/143"),
            _listitemCard("Fullstack Mobile Course", "Kem Vanny",
                "https://picsum.photos/154"),
          ],
        ),
      ),
    );
  }

  Widget _header(String title, Color color) {
    return Container(
      width: 150,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14)),
          SizedBox(height: 6),
          Text("05 courses",
              style: TextStyle(color: Colors.black54, fontSize: 12)),
        ],
      ),
    );
  }

  Widget _title(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "See All",
          style: TextStyle(
            color: Colors.brown,
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _itemCard(String title, String author, String img) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              title: title,
              author: author,
              img: img,
            ),
          ),
        );
      },
      child: Container(
        width: 250,
        margin: EdgeInsets.only(right: 16),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(img,
                    height: 120, width: double.infinity, fit: BoxFit.cover),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    SizedBox(height: 4),
                    Text(
                      author,
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _listitemCard(String title, String author, String img) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              title: title,
              author: author,
              img: img,
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(img, width: 60, height: 60, fit: BoxFit.cover),
          ),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(author),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
        ),
      ),
    );
  }
}
