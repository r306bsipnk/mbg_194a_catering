import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResetPasswordScreen(),
    );
  }
}

// Mendefinisikan warna palet
const Color greenPrimary = Color(0xFF5DB075); 
const Color greenSecondary = Color(0xFF4B9460);
const Color grey01 = Color(0xFFF6F6F6); 
const Color grey02 = Color(0xFFE8E8E8); 
const Color grey03 = Color(0xFFBDBDBD); 
const Color grey04 = Color(0xFF666666); 

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Reset Password',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: grey03),
                border: InputBorder.none,
                filled: true,
                fillColor: grey01,
              ),
            ),
            SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Logic to reset password
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: greenPrimary,  
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
                child: Text(
                  'Reset Password',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 8.0),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  // Logic to go back
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: Text(
                  'Kembali',
                  style: TextStyle(fontSize: 16.0, color: greenSecondary),  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
