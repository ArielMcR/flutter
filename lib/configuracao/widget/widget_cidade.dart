import 'package:flutter/material.dart';
import 'package:web_barber/banco/dados.dart';
import 'package:web_barber/banco/entidade/Cidade.dart';
import 'package:web_barber/configuracao/widget/widget_cidade_lista.dart';

class WidgetCidade extends StatefulWidget {
  WidgetCidade({Key? key}) : super(key: key);

  @override
  State<WidgetCidade> createState() => _WidgetCidadeState();
}

class _WidgetCidadeState extends State<WidgetCidade> {
  var campoNome = TextEditingController();

  var campoUrl = TextEditingController();

  var campoEstado = TextEditingController();

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de cidade'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: campoNome,
                    decoration: InputDecoration(labelText: 'Nome:'),
                  ),
                  TextFormField(
                    controller: campoUrl,
                    decoration: InputDecoration(labelText: 'Url da imagem:'),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Selecione uma opção',
                      border: OutlineInputBorder(),
                    ),
                    value: 'PR',
                    onChanged: (String? valor) {
                      campoEstado.text = valor!;
                    },
                    items: ['PR', 'SP', 'BH'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  TextButton(
                      onPressed: () => {
                            print("Entrou auqi"),
                            setState(() {
                              cidades.add({
                                "nome": campoNome.text,
                                "url": campoUrl.text,
                                "estado": 'PR'
                              });
                            }),
                            campoNome.text = "",
                            campoEstado.text = "",
                            campoUrl.text = "",
                            print(cidades)
                          },
                      child: Text('Salvar')),
                ],
              ),
            ),
          ),
          Expanded(
            child: WidgetCidadeList(),
          ),
        ],
      ),
    );
  }
}

//campoNome.text = xxx
