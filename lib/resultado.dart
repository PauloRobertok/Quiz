import 'package:flutter/material.dart';

class Argumentos {

  int acertos = 0;

  Argumentos(this.acertos);
}

class Resultado extends StatelessWidget {
  static const routeName = 'Resultado';

  const Resultado({super.key});

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context);
    final argumentos = route?.settings.arguments as Argumentos;
       
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
                    'Você acertou:\n${argumentos.acertos} de 10 perguntas',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        print('Pressionado');
                        Navigator.pushNamed(context,'Quiz');
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
