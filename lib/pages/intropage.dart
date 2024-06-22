import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/components/neu_box.dart';
import 'package:todo/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            NeuBox(
              height: 200,
              width: 200,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      "lib/assets/chef.png",
                      height: 120,
                      width: 150,
                    ),
                  ),
                  Text(
                    "Alabbsy Foods",
                    style: GoogleFonts.ebGaramond(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "            Ever tasty...",
                    style: GoogleFonts.dancingScript(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyHomePage())),
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
                child: NeuBox(
                  height: 60,
                  width: 200,
                  child: Container(
                    width: 200,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
