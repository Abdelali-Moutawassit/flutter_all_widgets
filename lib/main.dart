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
Le widget ConstrainedBox est utilisé pour appliquer des contraintes de taille à un widget enfant, telles que des limites minimales et maximales de largeur et de hauteur. Il permet de contrôler la taille d'un widget en fonction des besoins de votre design.

*Utilisation*:
Utilisez ConstrainedBox pour:

- Définir une taille minimale pour un widget pour éviter qu'il ne soit trop petit
- Définir une taille maximale pour un widget pour éviter qu'il ne dépasse une certaine limite
- Contrôler la taille d'un widget en fonction de la taille de son parent

*Propriétés*:

- child : Le widget enfant soumis aux contraintes
- constraints : Les contraintes de taille à appliquer (par exemple, BoxConstraints(minWidth: 100, maxHeight: 200))

*Types de contraintes*:

- minWidth et minHeight : Largeur et hauteur minimales
- maxWidth et maxHeight : Largeur et hauteur maximales
- tight : Applique les contraintes de manière stricte (pas de marge)
- loose : Applique les contraintes de manière souple (avec marge)
        */
        body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 100,
              maxWidth: 200,
              minHeight: 100,
              maxHeight: 200,
            ),
            child: Container(color: Colors.amber, height: 50, width: 50),
            // Malgre le container a 50 , 50 le BoxConstraints force a container de prendre le min de width et hight
          ),
        ),
      ),
    );
  }
}
