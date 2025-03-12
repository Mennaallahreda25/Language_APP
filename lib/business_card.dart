import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BusinessIDCard(),
  ));
}

class BusinessIDCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // لون الخلفية
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // 📌 1. صورة البروفايل
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('lib/images/profile.jpg'), // ضع الصورة هنا
                ),
                SizedBox(height: 12),

                // 📌 2. الاسم
                Text(
                  "Menna Allah Reda",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 6),

                // 📌 3. الوظيفة
                Text(
                  "Flutter Developer",
                  style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                ),

                SizedBox(height: 16),

                // 📌 4. رقم الهاتف داخل Container
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.phone, color: Colors.blue),
                      SizedBox(width: 10),
                      Text(
                        "+123 456 7890",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10),

                // 📌 5. البريد الإلكتروني داخل Container
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.email, color: Colors.blue),
                      SizedBox(width: 10),
                      Text(
                        "menna.gmail.com",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
