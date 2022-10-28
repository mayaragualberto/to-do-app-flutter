import 'package:flutter/material.dart';
import 'package:to_do_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      icon: const Icon(
        Icons.add_task,
        color: Colors.green,
      ),
      content: Container(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Inclua uma nova atividade",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // botão de salvar
                  MyButton(text: "Salvar", onPressed: onSave),
                  const SizedBox(width: 8),
                  // botão de fechar
                  MyButton(text: "Cancelar", onPressed: onCancel),
                ],
              ),
            ],
          )),
    );
  }
}
