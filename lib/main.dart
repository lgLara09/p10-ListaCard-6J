import 'package:flutter/material.dart';

void main() => runApp(const MiListaCard());

class MiListaCard extends StatelessWidget {
  const MiListaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Mi List View Garcia",
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: PaginaInicial());
  }
}

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/avatar1.png",
    "assets/images/avatar2.png",
    "assets/images/avatar3.jpg",
    "assets/images/avatar4.png",
    "assets/images/cinco.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Garcia"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
              title: Text("El Titulo"),
              subtitle: Text("El Subtitulo"),
            ),
          );
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
