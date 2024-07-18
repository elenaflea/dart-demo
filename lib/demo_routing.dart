import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _router = GoRouter(
      initialLocation: '/pokedex',
      routes: [
        GoRoute(
            path: '/pokedex',
            routes: [
              GoRoute(
                  path: 'pokemon/:idPokemon',
                  builder: (context,state) =>
                      PokemonPage(state.pathParameters["idPokemon"])
              ),
            ],
            builder: (context,state) => PokedexPage()
        )
      ]
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
class PokemonPage extends StatelessWidget {
  final String? idPokemon;
  const PokemonPage(this.idPokemon,{super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.network("https://raw.githubusercontent.com/PokeAPI/"
                      "sprites/master/sprites/pokemon/$idPokemon.png",height: 300, width: 300),
                    Text("Pokemon n° $idPokemon", style: TextStyle(fontSize: 22)),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class PokedexPage extends StatelessWidget {
  const PokedexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context,index)=> Card(
            child: InkWell(
              onTap: ()=>context.go("/pokedex/pokemon/$index"),
              child: Column(
                children: [
                  Image.network("https://raw.githubusercontent.com/PokeAPI/"
                      "sprites/master/sprites/pokemon/$index.png"),
                  Text("Pokemon n°$index"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}




