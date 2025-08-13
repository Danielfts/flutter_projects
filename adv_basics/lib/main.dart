import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: LandingPage(),
    ),
  );
}

class LandingPage extends StatelessWidget {
  const LandingPage({
    super.key,
  });

  onPress() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.blueGrey],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(width: 200, 'assets/images/quiz-logo.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                style: TextStyle(color: Colors.white, fontSize: 20),
                'Learn Flutter the fun way',
              ),
              SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: onPress,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10.0),
                  ),
                ),
                child: Text('Start quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
