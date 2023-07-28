import 'package:flutter/material.dart';

import 'components.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        // leading: IconButton(
        //   icon: const Icon(Icons.menu_rounded),
        //   color: Colors.black,
        //   onPressed: () {},
        // ),
        backgroundColor: Colors.white,
      ),
      drawer: const Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 60.0, left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find Your",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 8),
              Text(
                "Inspiration",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              upperContainer(),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Today's Post",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          promoCard("assets/1.jpg"),
                          promoCard("assets/2.jpg"),
                          promoCard("assets/3.jpg"),
                          promoCard("assets/4.jpg"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    narrowCard("assets/4.jpg"),
                    narrowCard("assets/5.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
