import 'package:flutter/material.dart';
import 'package:web_barber/configuracao/rotas.dart';
import 'package:web_barber/configuracao/widget/widget_cidade.dart';
import 'package:web_barber/configuracao/widget/widget_cidade_lista.dart';
import 'package:web_barber/configuracao/widget/widget_estado.dart';
import 'package:web_barber/configuracao/widget/widget_login.dart';
import 'package:web_barber/configuracao/widget/widget_menu.dart';
import 'package:web_barber/configuracao/widget/widget_pessoa.dart';
import 'package:web_barber/configuracao/widget/widget_pessoa_lista.dart';

class App extends StatelessWidget {
  const App({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aula Widget',
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        initialRoute: Rotas.home,
        routes: {
          // Rotas.home: (context) => const WidgetLogin(),
          Rotas.home: (context) => const WidgetMenu(),
          Rotas.estado: (context) => const WidgetEstado(),
          Rotas.cidade: (context) => WidgetCidade(),
          Rotas.pessoa: (context) => const WidgetPessoa(),
          Rotas.pessoaLista: (context) => WidgetPessoaLista()
        });
  }
}
