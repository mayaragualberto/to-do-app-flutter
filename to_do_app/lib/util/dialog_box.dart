import 'package:flutter/material.dart';
import 'package:ToDoApp/util/my_button.dart';

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
      clipBehavior: Clip.hardEdge,
      backgroundColor: Theme.of(context).backgroundColor,
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
        ),
      ),
    );
  }
}
