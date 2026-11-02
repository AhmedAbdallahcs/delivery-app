import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({super.key});

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  int quantity = 1;
  final double price = 9.47;

  Widget qtyButton(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: Color(0xFFFC605F),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(icon, color: Colors.white, size: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 12, bottom: 8),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              const Text(
                "Melting Cheese",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 4),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "\$",
                      style: TextStyle(
                        color: Colors.red.shade400,
                        fontSize: 12,
                      ),
                    ),
                    const TextSpan(
                      text: "9.47",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Container(
                width: 180,
                height: 180,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image.asset(
                    "lib/asset/images/Melting Cheese.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  qtyButton(Icons.remove, () {
                    if (quantity > 1) {
                      setState(() {
                        quantity--;
                      });
                    }
                  }),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "$quantity",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  qtyButton(Icons.add, () {
                    setState(() {
                      quantity++;
                    });
                  }),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                "\$${(price * quantity)}",
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 200,),
                 Row(
                  children:  [
                    Icon(Icons.star_rounded, color: Colors.amber, size: 20),
                    SizedBox(width: 4),
                    Text('4.9'),
                    SizedBox(width: 24),
                    Icon(Icons.local_fire_department, color: Colors.orange, size: 20),
                    SizedBox(width: 4),
                    Text('44 Calories'),
                    SizedBox(width: 24),
                    Icon(Icons.timer_outlined, color: Colors.blue, size: 20),
                    SizedBox(width: 4),
                    Text('20 - 30 min'),
                  ],
                ),
              SizedBox(height: 40,),
              ElevatedButton(
                onPressed: () {},
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