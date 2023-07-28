import 'package:flutter/material.dart';

Widget upperContainer() {
  return Container(
    padding: const EdgeInsets.all(24),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(14),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Find Your",
          style: TextStyle(fontSize: 25),
        ),
        const SizedBox(height: 8),
        const Text(
          "Inspiration",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 18),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(14)),
          child: TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              // icon: Icon(Icons.search_rounded),
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              // focusColor: Colors.black,
              prefixIcon: const Icon(Icons.search_rounded),
              prefixIconColor: Colors.grey[600],
              hintText: "Search what you're looking for",
              hintStyle: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    ),
  );
}

Widget narrowCard(String image) {
  return Container(
    height: 150,
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 16),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          stops: const [0, 0.9],
          colors: [
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0),
          ],
        ),
      ),
      child: const Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.0, bottom: 15),
            child: Text(
              "Something Else",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget promoCard(String image) {
  return AspectRatio(
    aspectRatio: 2.6 / 3,
    child: Container(
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0, 0.9],
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0),
            ],
          ),
        ),
        child: const Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 15),
              child: Text(
                "Something",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
