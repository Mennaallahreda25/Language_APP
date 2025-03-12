import 'package:flutter/material.dart';

class ColorsScreen extends StatelessWidget {
  final List<Map<String, String>> colors = [
    {'jp': 'Aka', 'en': 'red', 'image': 'lib/images/images/colors/color_black.png'},
    {'jp': 'Midori', 'en': 'green', 'image': 'lib/images/images/colors/color_green.png'},
    {'jp': 'Shiro', 'en': 'white', 'image': 'lib/images/images/colors/color_white.png'},
    {'jp': 'Kuro', 'en': 'black', 'image': 'lib/images/images/colors/color_black.png'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Colors")),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(colors[index]['image']!, width: 50),
            title: Text("${colors[index]['jp']} - ${colors[index]['en']}"),
          );
        },
      ),
    );
  }
}
