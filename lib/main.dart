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
        *Définition*:
Le widget FractionallySizedBox est utilisé pour redimensionner un widget enfant en fonction d'une fraction de la taille de son parent. Il permet de créer des layouts flexibles où les widgets s'adaptent à la taille de leur conteneur.

*Utilisation*:
Utilisez FractionallySizedBox pour:

- Redimensionner un widget en fonction d'une fraction de la largeur du parent
- Redimensionner un widget en fonction d'une fraction de la hauteur du parent
- Créer des layouts responsifs où les widgets s'adaptent à la taille de l'écran

*Propriétés*:

- child : Le widget enfant à redimensionner
- widthFactor : Fraction de la largeur du parent (par exemple, 0.5 pour 50%)
- heightFactor : Fraction de la hauteur du parent (par exemple, 0.5 pour 50%)
- alignment : Alignement du widget enfant dans son conteneur

*Exemple de code*:
        */
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue,
            child: FractionallySizedBox(
              widthFactor: 0.5, // prendre 50% de la taille de width de son parent
              heightFactor: 0.75, // prendre 75% de la taille de hight de son parent
              child: Container(color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
