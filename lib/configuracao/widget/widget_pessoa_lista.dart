import 'package:flutter/material.dart';

class WidgetPessoaLista extends StatelessWidget {
  var pessoas = [
    {
      "nome": "Joane Darte",
      "telefone": "(44) 99999-9999",
      "url":
          "https://cdn.pixabay.com/photo/2020/11/10/15/51/bear-5730216_640.png"
    },
    {
      "nome": "Felipe",
      "telefone": "(44) 99999-9999",
      "url":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Bandeira_de_Maring%C3%A1_-_PR.svg/2560px-Bandeira_de_Maring%C3%A1_-_PR.svg.png"
    },
    {
      "nome": "Mariana",
      "telefone": "(44) 99999-9999",
      "url":
          "https://cdn.pixabay.com/photo/2020/11/22/22/17/male-5768177_640.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de pessoas"),
      ),
      body: ListView.builder(
        itemBuilder: (context, contador) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage('${pessoas[contador]["url"]}'),
          ),
          title: Text('${pessoas[contador]["nome"]}'),
          subtitle: Text('${pessoas[contador]["telefone"]}'),
          trailing: SizedBox(
            width: 80,
            child: Row(
              children: [
                IconButton(
                  onPressed: () => {pessoas.remove(contador)},
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                ),
                IconButton(
                  onPressed: () => {pessoas.remove(contador)},
                  icon: Icon(Icons.edit),
                  color: Colors.green,
                )
              ],
            ),
          ),
          // righ: Text('${pessoas[contador]["telefone"]}'),
        ),
        itemCount: pessoas.length,
      ),
    );
  }
}
