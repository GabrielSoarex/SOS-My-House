import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class Prestadores {
  final String name;
  final String cuisine;
  final double classificacao;


  Prestadores({
    required this.name,
    required this.cuisine,
    required this.classificacao,

  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: MyAppBar(),
        body: ContentWidget(),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 255, 255, 255),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Image.asset(
                'imagens/logo.png',
                height: 43,
                width: 36,
              ),
              SizedBox(width: 16),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Buscar algum serviço',
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.notification_add),
                onPressed: () {
                },
                
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text('Cadastre-se'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  )),
              
            ],
          ),
        ),
      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  final List<Prestadores> prestadores = [
    Prestadores(
      name: "Evandro",
      cuisine: "Piscineiro",
      classificacao: 5,
    ),
    Prestadores(
      name: "Mariana",
      cuisine: "Faxineira",
      classificacao: 4.0,
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 8),
                Text('Informe seu CEP'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircularImage('imagePaths[0]', 'Faxineiro(a)'),
                _buildCircularImage('imagePaths[1]', 'Eletricista'),
                Image.network(''),
                _buildCircularImage('imagePaths[3]', 'Pedreiro'),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(''),
                _buildCircularImage('imagePaths[5]', 'Encanador'),
                _buildCircularImage('imagePaths[6]', 'Jardineiro'),
                _buildCircularImage('imagePaths[7]', 'Outros...'),
              ],
            ),

            SizedBox(height: 16),
            Text(
              'Serviços',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Column(
              children: prestadores.map((prestadores) {
                return PrestadoresCard(prestadores: prestadores);
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircularImage(String imageName, String caption) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('https://img.freepik.com/fotos-gratis/tela-vazia-branca_1194-7555.jpg?w=2000'), // Substitua pelo caminho correto da imagem
          radius: 40,
        ),
        SizedBox(height: 8),
        Text(caption),
      ],
    );
  }
}


class PrestadoresCard extends StatelessWidget {
  final Prestadores prestadores;

  PrestadoresCard({required this.prestadores});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      elevation: 4.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 prestadores.name,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                 prestadores.cuisine,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Classificação: ${prestadores.classificacao}',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}