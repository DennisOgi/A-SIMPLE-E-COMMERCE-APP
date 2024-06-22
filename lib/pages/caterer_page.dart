import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo/pages/homepage.dart';

class CatererPage extends StatelessWidget {
  const CatererPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: GestureDetector(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(),
                  ),
                ),
            child: Icon(Icons.arrow_back)),
      ),
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(
          children: [
            Text(
              "MAKE ENQUIRIES",
              style: GoogleFonts.ebGaramond(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: Image.asset(
                "lib/assets/black.png",
                height: 60,
                width: 60,
              ),
            ),
            Text(
              "alaba ogi",
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            )
          ],   
        ),
      ),
    );
  }
}
