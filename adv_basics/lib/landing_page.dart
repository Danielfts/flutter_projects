import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({
    super.key,
    required this.switchScreen,
  });

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(width: 200, 'assets/images/quiz-logo.png'),
          ),
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
          OutlinedButton.icon(
            onPressed: () {
              switchScreen();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10.0),
              ),
            ),
            label: Text('Start Quiz'),
            icon: Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
