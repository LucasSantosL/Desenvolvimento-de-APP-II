import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Pokemons',
    //para configurar a aparência de todo o aplicativo
    theme: ThemeData(
      //
      //são os diferentes tons de uma cor que um aplicativo de material usará
      primarySwatch: Colors.red,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemons'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/pokemon-go.jpg',
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.all(32)),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    //direcionando para outra página
                    MaterialPageRoute(builder: (context) => DiaryPokemon()));
              },
              icon: Icon(Icons.arrow_right),
              label: Text('Acessar Pokemons'),
            ),
          ),
        ],
      ),
    );
  }
}

class DiaryPokemon extends StatelessWidget {
  const DiaryPokemon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokemon Favorito"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Pokemon Favorito'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyFavoritePokemon()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Jogador"),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Gráficos"),
          ),
          ListTile(
            leading: Icon(Icons.picture_in_picture_rounded),
            title: Text("Imagens Pokemon"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Pesquisar Pokemon"),
          ),
          Image.asset(
            'images/pokemon-lista.jpg',
            fit: BoxFit.cover,
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

class Pokedex extends StatelessWidget {
  const Pokedex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemom Favorito'),
      ),
      body: Center(
        child: Align(
          alignment: Alignment.center,
          child: Text("Diversos pokemons" + "Mas você pode ver em outro sites"),
        ),
      ),
    );
  }
}

class MyFavoritePokemon extends StatelessWidget {
  const MyFavoritePokemon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokémon Favorito'),
      ),
      body: ListView(
        children: [
          Center(
            child: Text(
              'Charizard',
              style: TextStyle(fontSize: 45),
            ),
          ),
          Image.asset(
            'images/Charizard_AG_anime.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    //direcionando para outra página
                    MaterialPageRoute(
                        builder: (context) => EvolucoesPokemom()));
              },
              icon: Icon(Icons.arrow_right_alt_outlined),
              label: Text('Avançar'),
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
          )
        ],
      ),
    );
  }
}

class EvolucoesPokemom extends StatefulWidget {
  const EvolucoesPokemom({Key? key}) : super(key: key);

  @override
  _EvolucoesPokemomState createState() => _EvolucoesPokemomState();
}

class _EvolucoesPokemomState extends State<EvolucoesPokemom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Evoluções Pokemon'),
        ),
        body: ListView(
          children: [
            Center(
              child: Text(
                "Evoluções",
                style: TextStyle(fontSize: 48),
              ),
            ),
            Center(
              child: Image.asset(
                  'images/As-evoluções-mais-incríveis-e-épicas-de-Pokémon.jpg'),
            ),
          ],
        ));
  }
}
