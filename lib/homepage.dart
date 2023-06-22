import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quiz!')),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Image.asset('assets/images/logo.png'),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Quiz');
                  },
                  child: Text(
                    'Jogar',
                    style: TextStyle(fontSize: 50),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(80, 15, 80, 15)
                  ),
                  )
            ])),
      ),
    );
  }
}