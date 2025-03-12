import 'package:flutter/material.dart';

class NumbersScreen extends StatelessWidget {
  final List<Map<String, String>> numbers = [
    {'jp': 'ichi', 'en': 'one', 'image': 'lib/images/images/numbers/number_one.png'},
    {'jp': 'ni', 'en': 'two', 'image': 'lib/images/images/numbers/number_two.png'},
    {'jp': 'san', 'en': 'three', 'image': 'lib/images/images/numbers/number_three.png'},
    {'jp': 'shi', 'en': 'four', 'image': 'lib/images/images/numbers/number_four.png'},
    {'jp': 'go', 'en': 'five', 'image': 'lib/images/images/numbers/number_five.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Numbers")),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return ListTile(
          leading: Image.asset(numbers[index]['image']!, width: 50),
            title: Text("${numbers[index]['jp']} - ${numbers[index]['en']}"),
          );
        },
      ),
    );
  }
}
