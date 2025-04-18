import 'package:flutter/material.dart';
import 'package:web_barber/banco/dados.dart';

class WidgetCidadeList extends StatefulWidget {
  @override
  State<WidgetCidadeList> createState() => _WidgetCidadeListState();
}

class _WidgetCidadeListState extends State<WidgetCidadeList> {
  var cidade_dados = cidades;

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemBuilder: (context, contador) => ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage('${cidade_dados[contador]["url"]}'),
        ),
        title: Text('${cidade_dados[contador]["nome"]}'),
        // subtitle: Text('${cidade_dados[contador]["telefone"]}'),
        trailing: SizedBox(
          width: 80,
          child: Row(
            children: [
              IconButton(
                onPressed: () => {
                  setState(() {
                    cidades.removeAt(contador);
                  })
                },
                icon: Icon(Icons.delete),
                color: Colors.red,
              ),
              IconButton(
                onPressed: () => {cidade_dados.remove(contador)},
                icon: Icon(Icons.edit),
                color: Colors.green,
              )
            ],
          ),
        ),
        // righ: Text('${cidade_dados[contador]["telefone"]}'),
      ),
      itemCount: cidade_dados.length,
    );
  }
}
