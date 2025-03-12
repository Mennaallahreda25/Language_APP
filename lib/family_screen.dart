import 'package:flutter/material.dart';

class FamilyScreen extends StatelessWidget {
  final List<Map<String, String>> family = [
    {'jp': 'Chichioya', 'en': 'father', 'image': 'lib/images/images/family/family_father.png'},
    {'jp': 'Hahaoya', 'en': 'mother', 'image': 'lib/images/images/family/family_mother.png'},
    {'jp': 'Ojiisan', 'en': 'grandfather', 'image': 'lib/images/images/family/family_grandfather.png'},
    {'jp': 'Sobo', 'en': 'grandmother', 'image': 'lib/images/images/family/family_grandmother.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Family Members")),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(family[index]['image']!, width: 50),
            title: Text("${family[index]['jp']} - ${family[index]['en']}"),
          );
        },
      ),
    );
  }
}
