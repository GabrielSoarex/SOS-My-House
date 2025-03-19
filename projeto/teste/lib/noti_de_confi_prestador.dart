import 'package:flutter/material.dart';

class Confirmacao extends StatefulWidget {
  @override
  _ConfirmacaoState createState() => _ConfirmacaoState();
}

class _ConfirmacaoState extends State<Confirmacao> {
  late TimeOfDay _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedTime = TimeOfDay.now();
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
                    'Confirmação do Prestador',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(' Nome do Prestador:'),
                  SizedBox(height: 8.0),
                  SizedBox(height: 5.0),
                  Text('Horário:'),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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

  // Função para mostrar o seletor de horário
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }
}

void _showConfirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Confirmação'),
        content: Text('Você tem certeza de que deseja confirmar?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              // Coloque a lógica de confirmação aqui
              // Por exemplo, você pode executar uma ação e, em seguida, fechar o diálogo e retornar à tela anterior.
              // Após a ação ser executada com sucesso, você pode adicionar Navigator.of(context).pop() para voltar.
              Navigator.of(context).pop();
            },
            child: Text('Confirmar'),
          ),
        ],
      );
    },
  );
}
