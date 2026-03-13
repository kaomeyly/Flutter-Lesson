import 'package:flutter/material.dart';
import 'package:flutter_application_1/RoutHook/productscreen.dart';

import 'productdetailscreen.dart';
import 'userscreen.dart';

class RouteApp {
  static const String HOME = '/';
  static const String USER = '/user';
  static const String PRODUCT = '/product';
  static const String PRODUCT_DETAIL = '/product/detail';
}

class Routeapps extends StatelessWidget {
  const Routeapps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteApp.HOME,
      routes: {
        RouteApp.HOME: (context) => const HomeRouterScreen(),
        RouteApp.USER: (context) => const Userscreen(),
        RouteApp.PRODUCT: (context) => const Productscreen(),
        RouteApp.PRODUCT_DETAIL: (context) => const Productdetailscreen(),
      },
    );
  }
}

/// This is your home screen inside the routing system
class HomeRouterScreen extends StatelessWidget {
  const HomeRouterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Route Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteApp.USER);
              },
              child: const Text("Go to User"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteApp.PRODUCT);
              },
              child: const Text("Go to Product"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteApp.PRODUCT_DETAIL);
              },
              child: const Text("Go to Product Detail"),
            ),
          ],
        ),
      ),
    );
  }
}
