import 'package:flutter/material.dart';
import 'package:warkop_app/models/food.dart';
import 'package:warkop_app/themes/colors.dart';

class MenuCard extends StatelessWidget {
  final Food item;
  final VoidCallback? onTap;
  const MenuCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    const cardRadius = 18.0;

    return ClipRRect(
      borderRadius: BorderRadius.circular(cardRadius),
      child: Container(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Image area with favorite heart
              Stack(
                children: [
                  // top image (rounded at top)
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(cardRadius),
                      topRight: Radius.circular(cardRadius),
                    ),
                    child: Image.asset(
                      item.imagePath,
                      height: 190,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (c, e, s) => Container(
                        height: 190,
                        color: Colors.grey[800],
                        child: Icon(Icons.broken_image, size: 48),
                      ),
                    ),
                  ),

                  // white circular heart background
                  Positioned(
                    right: 12,
                    top: 12,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ],
              ),

              // Content area
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // title + time
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.nama,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Row(
                          children: [
                            SizedBox(width: 6),
                            Text('Rp. ${item.harga}'),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 8),

                    // rating
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        SizedBox(width: 6),
                        Text(
                          '${item.rating} ',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Perfect (${item.review})',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),

                    SizedBox(height: 12),

                    // chips / tags
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: item.tags
                          .map(
                            (t) => Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 14,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                t,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                          .toList(),
                    ),
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
