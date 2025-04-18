import 'package:flutter/material.dart';

class WidgetEstado extends StatelessWidget {
  const WidgetEstado({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de estado'),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Nome:', hintText: 'Informe o nome do estado'),
          ),
        ],
      )),
    );
  }
}
