import 'package:flutter/material.dart';

class AvaliacaoC extends StatelessWidget {
  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmar Finalização do Serviço'),
          content: Text('Tem certeza de que deseja finalizar o serviço?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fecha a caixa de diálogo
              },
              child: Text('Cancelar'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
            ),
            TextButton(
              onPressed: () {
                // Aqui você pode adicionar a lógica para finalizar o serviço
                // e fazer qualquer outra coisa necessária.
                Navigator.of(context).pop(); // Fecha a caixa de diálogo
              },
              child: Text('Confirmar'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
            ),
          ],
        );
      },
    );
  }

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
                border: Border.all(color: Color.fromARGB(255, 89, 3, 139)),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Avaliação do cliente',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(' Avaliar cliente:★★★★☆'),
                  SizedBox(height: 16.0),
                  Text('Observação:'),
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
                  onPressed: () {
                    _showConfirmationDialog(
                        context); // Mostra a caixa de diálogo de confirmação
                  },
                  child: Text('Finalizar serviço'),
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
}

void main() => runApp(MaterialApp(
      home: Scaffold(
        body: AvaliacaoC(),
      ),
    ));
