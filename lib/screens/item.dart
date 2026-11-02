import 'package:final_flutter/asset/widgets/Category.dart';
import 'package:final_flutter/asset/widgets/foodcard.dart';
import 'package:final_flutter/screens/melting_cheese.dart';
import 'package:flutter/material.dart';


class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, size: 30),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFFC605F),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                "Hi Alex",
                style: TextStyle(
                  fontSize: 17,
                  color: Color(0xFFFC605F),
                ),
              ),
              SizedBox(height: 4),
              Text(
                "Find your Delicious Food",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoryItem(
                      name: "Italian",
                      image: 'lib/asset/images/Italian.png',
                    ),
                    CategoryItem(
                      name: "Japanese",
                      image: 'lib/asset/images/Japanese.png',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                "Popular",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 162 / 272,
                  ),
                  children: [
                    FoodCard(
                      name: "Melting Cheese",
                      calories: "44 calories",
                      price: "9.47",
                      image: 'lib/asset/images/Melting Cheese.png',
                    ),
                    FoodCard(
                      name: "Pizza Capricciosa",
                      calories: "54 calories",
                      price: "12.55",
                      image: 'lib/asset/images/Pizza Capricciosa.png',
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Item()),
                  );},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFC605F),
                  foregroundColor: Colors.white,
                  minimumSize: Size(350, 56),
                ),
                child: Text('Add to cart', style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}