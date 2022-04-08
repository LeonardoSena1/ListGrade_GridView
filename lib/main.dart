// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          opcoes.length,
          (index) {
            return Center(
              child: OpcaoCard(
                  key: Key(opcoes[index].titulo.toString()),
                  opcao: opcoes[index]),
            );
          },
        ),
      ),
    );
  }
}

class Opcao {
  const Opcao({required this.titulo, required this.icon});
  final String titulo;
  final IconData icon;
}

const List<Opcao> opcoes = const <Opcao>[
  const Opcao(titulo: 'Carro', icon: Icons.directions_car),
  const Opcao(titulo: 'Bike', icon: Icons.directions_bike),
  const Opcao(titulo: 'Barco', icon: Icons.directions_boat),
  const Opcao(titulo: 'Ônibux', icon: Icons.directions_bus),
  const Opcao(titulo: 'Trem', icon: Icons.directions_railway),
  const Opcao(titulo: 'Andar', icon: Icons.directions_walk),
  const Opcao(titulo: 'Carro', icon: Icons.directions_car),
  const Opcao(titulo: 'Bike', icon: Icons.drafts),
  const Opcao(titulo: 'Barco', icon: Icons.dvr),
  const Opcao(titulo: 'Copy', icon: Icons.copyright),
  const Opcao(titulo: 'Train', icon: Icons.cloud_off),
  const Opcao(titulo: 'Car', icon: Icons.directions_car),
  const Opcao(titulo: 'Bike', icon: Icons.directions_bike),
  const Opcao(titulo: 'Barco', icon: Icons.directions_boat),
  const Opcao(titulo: 'Ônibus', icon: Icons.directions_bus),
  const Opcao(titulo: 'Trem', icon: Icons.directions_railway),
  const Opcao(titulo: 'Andar', icon: Icons.directions_walk),
  const Opcao(titulo: 'Carro', icon: Icons.directions_car),
  const Opcao(titulo: 'Bike', icon: Icons.drafts),
  const Opcao(titulo: 'Barco', icon: Icons.dvr),
];

class OpcaoCard extends StatelessWidget {
  const OpcaoCard({Key? key, required this.opcao}) : super(key: key);
  final Opcao opcao;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                opcao.icon,
                size: 80.0,
                color: Colors.red,
              ),
              Text(
                opcao.titulo,
                style: TextStyle(color: Colors.red),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.blue,
                  onSurface: Colors.red,
                ),
                onPressed: (() {
                  print(key
                      .toString()
                      .replaceAll("[<'", "")
                      .replaceAll("'>]", ""));
                }),
                child: Text('CLick'),
              )
            ]),
      ),
    );
  }
}
