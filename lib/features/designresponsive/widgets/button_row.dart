import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Actualizar"),
          ),
        ),
        const Spacer(),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Descargar"),
          ),
        ),
      ],
    );
  }
}
