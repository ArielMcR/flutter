import 'package:flutter/material.dart';
import 'package:web_barber/configuracao/rotas.dart';

import 'package:web_barber/configuracao/widget/widget_botao.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({key}) : super(key: key);

  //método - define, tudo que repete, parâmetro(não tem, diferentes)
  Widget criarBotao(BuildContext context, String rotulo, String rota) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(rota);
        },
        child: Text(rotulo));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //jeito de fazer com classe
        WidgetBotao(rota: Rotas.estado, rotulo: 'Cadastro de Estado'),
        //jeito de fazer com método
        criarBotao(context, 'Cadastro de Cidade', Rotas.cidade),
        criarBotao(context, 'Cadastro de Pessoa', Rotas.pessoa),
        criarBotao(context, "Listar Pessoas", Rotas.pessoaLista)
      ],
    );
  }
}
