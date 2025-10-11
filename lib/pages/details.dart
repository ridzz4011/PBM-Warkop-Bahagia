import 'package:flutter/material.dart';
import 'package:warkop_app/models/food.dart';

class DetailPage extends StatelessWidget {
  final Food item;
  const DetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(item.nama),
        leading: Icon(Icons.menu, color: Colors.black),
      ),
      body: ListView(
        children: [
          Hero(
            tag: 'image-${item.nama}',
            child: Image.asset(
              item.imagePath,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.nama,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('${item.rating} • ${item.review} reviews'),
                SizedBox(height: 16),
                Text('Ceritanya makanan'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
