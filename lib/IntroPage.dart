import 'package:flutter/material.dart';
import 'package:newnewnew/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 175, 98),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "images/logocat.jpg",
                height: 240,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Cat Care',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'อาหารแมว ที่แมวคุณต้องการ',
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 48),
            
            
            GestureDetector(
              onTap: () => Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => HomePage(),
              )), 
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                    ),
                padding: const EdgeInsets.all(25),
                child: const Center(
                  child: Text(
                    'ซื้อเลย',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
