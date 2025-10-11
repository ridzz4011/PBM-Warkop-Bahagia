import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warkop_app/components/button.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 129, 47, 1),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),

            // Title
            Center(
              child: Text(
                "Warkop Bahagia",
                style: GoogleFonts.playwriteDeSas(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),

            // Icon
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Image.asset('lib/images/logo.png'),
            ),

            // Sub-text
            Text(
              "Hanya sebuah warkop biasa.",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            Text(
              "Kami menyediakan berbagai macam menu biasa mulai dari makanan hingga minuman.",
              style: GoogleFonts.plusJakartaSans(
                fontSize: 20,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 15),

            MyButton(
              text: "Pesen yuk!",
              onTap: () {
                // ke menu
                Navigator.pushNamed(context, '/menu');
              },
            ),
          ],
        ),
      ),
    );
  }
}
