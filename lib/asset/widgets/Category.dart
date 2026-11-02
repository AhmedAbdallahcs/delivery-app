import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String image;

  const CategoryItem({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              image,
              width: 40,
              height: 40,
            ),
          ),
          SizedBox(height: 6),
          Text(
            name,
            style: TextStyle(
              fontSize: 11,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}