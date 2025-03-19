import 'package:flutter/material.dart';

class AvaliacaoP extends StatelessWidget {
  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmar Finalização'),
          content: Text('Tem certeza de que deseja finalizar o serviço?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fecha a caixa de diálogo
              },
              child: Text('Não'),
            ),
            TextButton(
              onPressed: () {
                // Aqui você pode adicionar a lógica para finalizar o serviço
                // e fazer qualquer outra coisa necessária.
                Navigator.of(context).pop(); // Fecha a caixa de diálogo
              },
              child: Text('Sim'),
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
                    'Avaliação do Prestador',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Text(' Avaliar prestador:★★★★☆'),
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      Text('Adicionar aos favoritos'),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          primary: Color.fromARGB(255, 88, 184, 9),
                        ),
                        child: Icon(
                          Icons.circle,
                        ),
                      ),
                    ],
                  ),
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
        body: AvaliacaoP(),
      ),
    ));
