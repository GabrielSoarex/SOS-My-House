import 'package:flutter/material.dart';

class EditaPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.purple, title: Text('Perfil')),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                    'data:image/jpeg;base64,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'),
              ),
              SizedBox(height: 20),
              Text(
                'Nome: Evandro',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                'Profissão: Piscineiro ',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text(
                'Avaliação: ★★★★☆',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Text('Contratar'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Voltar'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Descrição: Realizo manutenções regulares na piscina para garantir seu funcionamento adequado. Faço monitoramento dos níveis de produtos químicos, como cloro e pH, e faço ajustes quando necessário.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
