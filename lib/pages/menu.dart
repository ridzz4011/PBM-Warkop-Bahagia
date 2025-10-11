import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:warkop_app/components/button.dart';
import 'package:warkop_app/components/card1.dart';
import 'package:warkop_app/components/menu_card.dart';
import 'package:warkop_app/models/food.dart';
import 'package:warkop_app/pages/details.dart';
import 'package:warkop_app/themes/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<Food> _items = [
    Food(
      nama: "Perkedel",
      harga: "3.000",
      imagePath: 'lib/images/perkedel.jpg',
      rating: "9.5",
      review: "123",
      tags: ['Fastfood', 'Kentang'],
    ),
    Food(
      nama: "Nasi",
      harga: "15.000",
      imagePath: 'lib/images/Nasi.jpg',
      rating: "9.3",
      review: "124",
      tags: ['Fastfood', 'Kentang'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Warkop Bahagia"),
        leading: Icon(Icons.menu, color: Colors.black),
      ),
      body: Column(
        children: [
          // Card 1
          CardOne(
            title: "Menu Andalan Hari ini",
            imagePath: 'lib/images/waffle.png',
            buttonText: "Pesan Sekarang",
            onTap: () {},
            backgroundColor: mainColor,
            avatarRadius: 52,
          ),

          // Search bar
          const SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

          const SizedBox(height: 17),

          SizedBox(
            height: 380,
            child: PageView.builder(
              itemCount: _items.length,
              padEnds: false,
              itemBuilder: (context, index) {
                final item = _items[index];
                return Padding(
                  padding: EdgeInsets.only(
                    left: index == 0 ? 16.0 : 8.0,
                    right: index == _items.length - 1 ? 16.0 : 8.0,
                  ),
                  child: MenuCard(
                    item: item,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => DetailPage(item: item),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
