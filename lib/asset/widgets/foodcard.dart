import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String name;
  final String calories;
  final String price;
  final String image;

  FoodCard({
    super.key,
    required this.name,
    required this.calories,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4),
          Text(
            calories,
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFFEB5757),
            ),
          ),
          SizedBox(height: 12),
          Expanded(
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 12),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "\$ ",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFEB5757),
                  ),
                ),
                TextSpan(
                  text: price,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}