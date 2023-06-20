import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    List quiz = [
      {
        "pergunta":"Quem descobriu o Brasil?",
        "resposta":[
          "Dem Pedro I",
          "Pedro Álvares Cabral",
          "Tiradentes",
          "Dem Pedro II",
        ],
        "alternativa_correta":2,
      }
    ];

    quiz.add(
      {
        "pergunta":"O Flutter é :",
        "respostas": [
          "Uma linguagem",
          "Um aplicativo",
          "Um SDK",
          "Um notebook"
        ],
        "alternativa_correta":2,
      }
    );
    print('Dados do Quiz');
    print(quiz);

  int perguntaNumero = 2;

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
                  Text(quiz[perguntaNumero - 1]['pergunta'] ,
                   style: TextStyle(fontSize: 20)),
                  SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print('Pressionado');
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
