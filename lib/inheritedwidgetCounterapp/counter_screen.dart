import 'package:flutter/material.dart';
import 'package:flutter_application_1/inheritedwidgetCounterapp/counterprovider_ex.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = CounterproviderEx.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Change Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hint: Text('Enter you name'),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.brown,
                    width: 3,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 4,
                  ),
                ),
              ),
            ),
            // Text(
            //   '${provider.count}',
            //   style: TextStyle(
            //     fontSize: 40,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                provider.increment();
              },
              child: Text('Change'),
            ),
          ],
        ),
      ),
    );
  }
}
