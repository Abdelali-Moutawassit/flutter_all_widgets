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
Le widget DecoratedBox est utilisé pour ajouter une décoration autour d'un widget enfant, telle que une couleur d'arrière-plan, une bordure, une ombre ou un motif.

*Utilisation*:
Utilisez DecoratedBox pour:

- Ajouter une couleur d'arrière-plan à un widget
- Créer une bordure autour d'un widget
- Ajouter une ombre à un widget
- Appliquer un motif de fond à un widget

*Propriétés*:

- child : Le widget enfant à décorer
- decoration : La décoration à appliquer (par exemple, BoxDecoration(color: Colors.blue))

*Types de décoration*:

- color : Couleur d'arrière-plan
- image : Image de fond
- border : Bordure
- borderRadius : Rayon de bordure
- boxShadow : Ombre
- gradient : Dégradé de couleur

*Exemple de code*:
        */
        body: Center(
          child: DecoratedBox(
            decoration: BoxDecoration(
              // Décoration avec couleur et bordure
              color: Colors.blue,
              border: Border.all(width: 2, color: Colors.red),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(height: 100, width: 100), // Widget décoré
          ),
        ),
      ),
    );
  }
}
