import 'package:flutter/material.dart';

class NotificacaoS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Color.fromARGB(255, 72, 3, 112)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nome do Cliente',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text('Descrição do Serviço:'),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text('Localização:'),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.camera_alt),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _showConfirmationDialog(
                        context); // Mostrar diálogo de confirmação
                  },
                  child: Text('Confirmar'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Voltar'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmação'),
          content:
              Text('Você tem certeza de que deseja contratar esse serviço?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Não'),
            ),
            TextButton(
              onPressed: () {
                // Coloque a lógica de confirmação aqui
                // Por exemplo, você pode executar uma ação e, em seguida, fechar o diálogo e retornar à tela anterior.
                // Após a ação ser executada com sucesso, você pode adicionar Navigator.of(context).pop() para voltar.
                Navigator.of(context).pop();
              },
              child: Text('Sim'),
            ),
          ],
        );
      },
    );
  }
}
