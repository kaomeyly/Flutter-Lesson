import 'package:flutter/material.dart';
import 'package:flutter_application_1/inheritedwidgetCounterapp/Practice/changetext.dart';

class CounterScreen2 extends StatefulWidget {
  const CounterScreen2({super.key});

  @override
  State<CounterScreen2> createState() => _CounterScreen2State();
}

class _CounterScreen2State extends State<CounterScreen2> {
  String currentText = "";
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Changetext(
      text: currentText,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Change Text'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  hint: Text('Enter your name'),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.brown,
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 4,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentText = controller.text;
                  });
                },
                child: Text('Change'),
              ),
              Builder(
                builder: (context) {
                  final provider = Changetext.of(context);
                  return Text(
                    provider.text,
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
