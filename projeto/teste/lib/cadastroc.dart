import 'package:flutter/material.dart';
import 'package:telas/principal.dart';

class widgetsBasicos extends StatefulWidget {
  @override
  State<widgetsBasicos> createState() => _widgetsBasicosState();
}

class _widgetsBasicosState extends State<widgetsBasicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text("Cadastro de Prestador "),
      ),
      body: Container(
        color: Colors.white,
        child: widgetCadastro(),
      ),
    );
  }
}

class widgetCadastro extends StatefulWidget {
  @override
  State<widgetCadastro> createState() => _WidgetCadastroState();
}

class _WidgetCadastroState extends State<widgetCadastro> {
  @override
  Widget build(BuildContext context) {
    final nomeField = TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Nome completo",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final emailField = TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final telefoneField = TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Telefone",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final rgField = TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "RG",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final cepField = TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "CEP",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final cidadelField = TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Cidade",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final bairroField = TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Bairro",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final ruaField = TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Rua",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final numeroField = TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "N°",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final complementoField = TextField(
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Complemento",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32))),
    );

    final buttonLogin = ButtonTheme(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MyAppBar(),
            ),
          );
        },
        child: Text("Cadastre-se"),
        style: ElevatedButton.styleFrom(
          primary: Colors.purple,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple, title: Text('Cadastro de Cliente')),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  child: Image.asset('imagens/logo.png', fit: BoxFit.contain),
                ),
                SizedBox(height: 40),
                nomeField,
                SizedBox(height: 40),
                emailField,
                SizedBox(height: 40),
                telefoneField,
                SizedBox(height: 40),
                rgField,
                SizedBox(height: 40),
                cepField,
                SizedBox(height: 40),
                cidadelField,
                SizedBox(height: 40),
                bairroField,
                SizedBox(height: 40),
                ruaField,
                SizedBox(height: 40),
                numeroField,
                SizedBox(height: 40),
                complementoField,
                SizedBox(height: 40),
                buttonLogin,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
