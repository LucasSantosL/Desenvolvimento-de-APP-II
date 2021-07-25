import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Est. dir. | Lucas Lisboa',
    theme: ThemeData(primarySwatch: Colors.yellow),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('League of App'),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(20)),
          Image.asset('images/lol.png'),
          Padding(padding: EdgeInsets.all(10)),
          Center(
            child: Text(
              "League of App",
              style: TextStyle(fontSize: 30, color: Colors.yellow),
            ),
          ),
          Center(
            child: Text(
              'Seu App sobre League of Legends',
              style: TextStyle(fontSize: 30),
            ),
          ),
          Padding(padding: EdgeInsets.all(15)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    //direcionando para outra página
                    MaterialPageRoute(builder: (context) => Tela2()));
              },
              icon: Icon(Icons.arrow_right),
              label: Text('Acessar Aplicativo'),
            ),
          ),
        ],
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  const Tela2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("League of App"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.add),
            title: Text('Adicionar Conta'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Personagens"),
          ),
          ListTile(
            leading: Icon(Icons.accessibility),
            title: Text("acessibilidade do jogo"),
          ),
          ListTile(
            leading: Icon(Icons.picture_in_picture_rounded),
            title: Text("Imagens dos personages"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Assistir LOL ao vivo"),
          ),
          Image.asset('images/lol2.jfif'),
          Padding(padding: EdgeInsets.all(3)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    //direcionando para outra página
                    MaterialPageRoute(builder: (context) => Tela3()));
              },
              icon: Icon(Icons.arrow_right_alt_outlined),
              label: Text('Melhores Personagens'),
            ),
          ),
          Padding(padding: EdgeInsets.all(3)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              label: Text("Voltar"),
            ),
          ),
        ],
      ),
    );
  }
}

class Tela3 extends StatelessWidget {
  const Tela3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Melhores Personagens'),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              "Melhores Personagens",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  backgroundColor: Colors.yellow),
            ),
          ),
          Padding(padding: EdgeInsets.all(3)),
          Center(
            child: Image.asset('images/personagens.jpg'),
          ),
          Padding(padding: EdgeInsets.all(3)),
          Center(
            child: Text(
              "Mais alguns personagens do LOL",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  backgroundColor: Colors.yellow),
            ),
          ),
          Padding(padding: EdgeInsets.all(3)),
          Center(
            child: Image.asset('images/personagens2.jpg'),
          ),
          Padding(padding: EdgeInsets.all(3)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              label: Text("Voltar"),
            ),
          ),
        ],
      ),
    );
  }
}
