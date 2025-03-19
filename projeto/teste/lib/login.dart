import 'package:flutter/material.dart';
import 'package:telas/cadastroc.dart';
import 'package:telas/cadastrop.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showRegistrationOptions = false;

  void toggleRegistrationOptions() {
    setState(() {
      showRegistrationOptions = !showRegistrationOptions;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple, title: Text('Login')),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Image.asset('imagens/logo.png'),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      labelText: 'Usuário',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Senha',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32))),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {},
                  child: Text('Entrar'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  )),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  toggleRegistrationOptions();
                },
                child: Text('Cadastrar-se'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                ),
              ),
              if (showRegistrationOptions)
                Column(
                  children: [
                    Text("Escolha uma opção de cadastro:"),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => widgetCadastro(),
                          ),
                        );
                      },
                      child: Text('Cliente'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () {
                        // Navegar para a tela "NotificacaoS" quando o botão "Contratar" for pressionado
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => widgetCadastrop(),
                          ),
                        );
                      },
                      child: Text('Prestador de Serviços'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
