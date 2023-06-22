import 'package:flutter/material.dart';
import 'package:quiz/resultado.dart';
import 'quiz_dados.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;

  @override
  Widget build(BuildContext context) {
    quiz.shuffle();
    void respondeu(int respostaNumero) {
      setState(() {
        if (quiz[perguntaNumero - 1]['alternativa_correta'] == respostaNumero) {
          print('acertou');
          acertos++;
        } else {
          print('errou');
          erros++;
        }
        print('acertos totais: $acertos erros totais: $erros');

        if (perguntaNumero == 10) {
          print('terminou o quiz');
          Navigator.pushNamed(context, 'Resultado',
              arguments: Argumentos(acertos));
        } else {
          perguntaNumero++;
        }
      });
    }

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
                      child: Text('Pergunta $perguntaNumero de 10',
                          style: TextStyle(fontSize: 20))),
                  Text(quiz[perguntaNumero - 1]['pergunta'],
                      style: TextStyle(fontSize: 20)),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Pressionado');
                        respondeu(1);
                      },
                      child: Text(
                        quiz[perguntaNumero - 1]['respostas'][0],
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(90, 20, 90, 20)),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Pressionado');
                        respondeu(2);
                      },
                      child: Text(
                        quiz[perguntaNumero - 1]['respostas'][1],
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(90, 20, 90, 20)),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Pressionado');
                        respondeu(3);
                      },
                      child: Text(
                        quiz[perguntaNumero - 1]['respostas'][2],
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(90, 20, 90, 20)),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Pressionado');
                        respondeu(4);
                      },
                      child: Text(
                        quiz[perguntaNumero - 1]['respostas'][3],
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.fromLTRB(90, 20, 90, 20)),
                    ),
                  ),
                ])),
      ),
    );
  }
}
