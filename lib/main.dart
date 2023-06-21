import 'package:flutter/material.dart';
import 'homepage.dart';
import 'quiz.dart';

void main() {
  runApp(const Resultado(acertos: 3,));
}

class Resultado extends StatelessWidget {
  const Resultado({super.key, required this.acertos});
  final int acertos;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Quiz!')),
          ),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  Text(
                    'Resultado',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Você acertou:\n$acertos de 10 perguntas',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Pressionado');
                      },
                      child: Text(
                        'Jogar Novamente',
                        style: TextStyle(fontSize: 31),
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(55, 15, 55, 15)),
                    ),
                  ),
                ])),
          )),
    );
  }
}
