import 'package:flutter/material.dart';
import 'colors_screen.dart';
import 'family_screen.dart';
import 'numbers_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Language app")),
      body: Column(
        children: [
          buildCategoryTile(context, "Numbers", Colors.orange, NumbersScreen()),
          buildCategoryTile(context, "Family Members", Colors.green, FamilyScreen()),
          buildCategoryTile(context, "Colors", Colors.purple, ColorsScreen()),
        ],
      ),
    );
  }

  Widget buildCategoryTile(BuildContext context, String title, Color color, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
      },
      child: Container(
        color: color,
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(vertical: 5),
        width: double.infinity,
        child: Text(title, style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
    );
  }
}

