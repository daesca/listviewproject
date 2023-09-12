import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  Listview1Screen({Key? key}) : super(key: key);

  final options = [
    "Introducción al área",
    "Desarrollo móvil",
    "Lengua materna"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Listview1")),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        //hay distintos constructores, separated es solo uno de ellos
        child: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.lightGreen,
            ),
            //Funcion para agregar acciones
            onTap: () {
              //Efecto splash cuando no es nulo
              final assignment = options[index];
              print(assignment);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ),
      ),
    );
  }
}
