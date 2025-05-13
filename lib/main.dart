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
        *FITTEDBOX WIDGET*

*Définition*:
Le widget FittedBox est utilisé pour ajuster la taille d'un widget enfant pour qu'il soit contenu dans son parent, tout en conservant son aspect ratio. Il permet de faire en sorte qu'un widget s'adapte à l'espace disponible sans être coupé ou déformé.

*Utilisation*:
Utilisez FittedBox pour:

- Ajuster la taille d'une image pour qu'elle soit visible dans son intégralité
- Faire en sorte qu'un texte s'adapte à la largeur disponible sans être coupé
- Conserver l'aspect ratio d'un widget lors du redimensionnement

*Propriétés*:

- child : Le widget enfant à ajuster
- fit : La stratégie d'ajustement souhaitée (par exemple, ` BoxFit.scaleDown`)

*Types de fit*:

- BoxFit.none : Pas d'ajustement
- BoxFit.scaleDown : Réduction de taille si nécessaire pour tenir
- BoxFit.scaleDownOnly : Réduction de taille uniquement si nécessaire
- BoxFit.contain : Ajustement pour contenir le widget entier
- BoxFit.cover : Ajustement pour couvrir tout l'espace disponible
- BoxFit.fill : Ajustement pour remplir tout l'espace disponible
- BoxFit.fitHeight : Ajustement pour adapter à la hauteur disponible
- BoxFit.fitWidth : Ajustement pour adapter à la largeur disponible

*Exemple de code*:
dart
Container(
  width: 200,
  height: 100,
  child: FittedBox( // Ajuster la taille de l'image pour qu'elle soit visible
    fit: BoxFit.contain,
    child: Image.asset('assets/image.jpg'),
  ),
)

Ce code ajuste la taille de l'image pour qu'elle soit contenue dans le conteneur.
        */
        body: Center(
          child: Container(
            height: 400,
            width: 200,
            color: Colors.amber,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.asset("images/image.png"),
            ),
          ),
        ),
      ),
    );
  }
}
