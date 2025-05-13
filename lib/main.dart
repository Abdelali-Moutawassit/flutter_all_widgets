import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Center(
            child: Text(
              "All Widgets Flutter",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        //Center Widget
        /*
        *Définition* :
Le widget Align est utilisé pour aligner un autre widget dans son parent selon des axes horizontal et vertical spécifiques. Il permet de positionner un widget de manière précise dans son parent.

*Différence avec Center*:

- Center centre toujours l'enfant horizontalement et verticalement.
- Align permet de choisir l'alignement horizontal et vertical séparément.

*Utilisation*:
Utilisez Align pour:

- Aligner un texte, une image ou un autre widget à gauche, droite, haut ou bas
- Créer des layouts complexes avec des éléments alignés de manière précise
- Positionner un widget en fonction de la taille de son parent

*Propriétés*:

- child : Le widget enfant à aligner
- alignment : L'alignement souhaité (par exemple, Alignment.topLeft)

*Types d'alignement*:

- Alignment.topLeft, .topCenter, .topRight
- Alignment.centerLeft, .center, .centerRight
- Alignment.bottomLeft, .bottomCenter, .bottomRight
- Alignment(-1.0 à 1.0, -1.0 à 1.0) : Alignement personnalisé avec des valeurs entre -1 et 1
        */
        body: Align(alignment: Alignment.centerLeft, child: Text("test")),
      ),
    );
  }
}
