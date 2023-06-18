import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quiz!')),
        ),
        body: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Text('Pergunta 1 de 10',
                          style: TextStyle(fontSize: 20))),
                  Text('Pergunta', style: TextStyle(fontSize: 20)),
                  ElevatedButton(
                    onPressed: () {
                      print('Pressionado');
                    },
                    child: Text(
                      'Resposta 1',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(90, 15, 90, 15)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Pressionado');
                    },
                    child: Text(
                      'Resposta 2',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(90, 15, 90, 15)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Pressionado');
                    },
                    child: Text(
                      'Resposta 3',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(90, 15, 90, 15)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print('Pressionado');
                    },
                    child: Text(
                      'Resposta 4',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(90, 15, 90, 15)),
                  )
                ])),
      ),
    );
  }
}
