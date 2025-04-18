import 'package:flutter/material.dart';
import 'package:web_barber/configuracao/rotas.dart';
import 'package:web_barber/configuracao/widget/widget_botao.dart';

class WidgetLogin extends StatelessWidget {
  const WidgetLogin({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrar no sistema"),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                labelText: "Usuário", hintText: "Digite o nome do usuário"),
          ),
          TextFormField(
            decoration: InputDecoration(
                labelText: "Senha", hintText: "Digite sua senha"),
          ),
          WidgetBotao(rota: Rotas.estado, rotulo: "Entrar")
        ],
      )),
    );
  }
}
