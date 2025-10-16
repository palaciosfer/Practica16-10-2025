import 'package:flutter/material.dart';
import '../widgets/stat_card.dart';
import '../widgets/button_row.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Dashboard de Estadísticas")),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isSmall = constraints.maxWidth < 600;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Tarjetas de estadísticas
                if (isSmall)
                  Column(
                    children: const [
                      StatCard(color: Colors.blue, text: "Ventas"),
                      SizedBox(height: 10),
                      StatCard(color: Colors.orange, text: "Clientes"),
                      SizedBox(height: 10),
                      StatCard(color: Colors.green, text: "Ingresos"),
                    ],
                  )
                else
                  Row(
                    children: const [
                      Expanded(
                        flex: 5,
                        child: StatCard(color: Colors.blue, text: "Ventas"),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 3,
                        child: StatCard(color: Colors.orange, text: "Clientes"),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        flex: 2,
                        child: StatCard(color: Colors.green, text: "Ingresos"),
                      ),
                    ],
                  ),
                const SizedBox(height: 20),
                const ButtonRow(),
              ],
            ),
          );
        },
      ),
    );
  }
}
