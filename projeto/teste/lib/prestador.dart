import 'package:flutter/material.dart';
import 'package:telas/edita_perfil.dart';
import 'package:telas/noti_de_confi_prestador.dart';

class ServicosP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Evandro - Piscineiro'),
      ),
      body: Center(
        child: Column(
          children: [
            ServicoCard(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQoP9G45jy6_CRx6WRicrbtVeRIWrOWmnun3erx9x_trFiEBuFLUyRsyf3MTXnIiRSsw28&usqp=CAU',
              descricao: 'Descrição do primeiro serviço.',
              localizacao:
                  'Localização: Nome da rua, Número da rua, Cidade, Estado',
            ),
            ServicoCard(
              imageUrl:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEWI8Qmvr9xeFAGFdhXgTdeHEisVmjk0SuIzv4MaLX&s',
              descricao: 'Descrição do segundo serviço.',
              localizacao:
                  'Localização: Nome da rua, Número da rua, Cidade, Estado',
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Início'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Histórico'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => EditaPerfil(),
                  ),
                );
              },
              child: Text('Perfil'),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class ServicoCard extends StatelessWidget {
  final String imageUrl;
  final String descricao;
  final String localizacao;

  ServicoCard({
    required this.imageUrl,
    required this.descricao,
    required this.localizacao,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(14.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120.0,
                child: Image.network(imageUrl),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Descrição do serviço:',
                        style: TextStyle(fontSize: 16.0),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        localizacao,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // Navegar para a tela "NotificacaoS" quando o botão "Contratar" for pressionado
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Confirmacao(),
                ),
              );
            },
            child: Text('Agendar'),
            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
