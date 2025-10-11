import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:warkop_app/components/button.dart';

class CardOne extends StatelessWidget {
  final String title;
  final String imagePath; // path for AssetImage or a network url
  final String buttonText; // optional: if null no button shown
  final VoidCallback? onTap; // button tap callback
  final Color backgroundColor;
  final double avatarRadius;

  const CardOne({
    super.key,
    required this.title,
    required this.imagePath,
    this.buttonText = "test",
    this.onTap,
    this.backgroundColor = const Color(0xFFFA812F),
    this.avatarRadius = 54,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              MyButton(text: buttonText, onTap: onTap),
            ],
          ),

          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              radius: avatarRadius,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(imagePath),
            ),
          ),
        ],
      ),
    );
  }
}
