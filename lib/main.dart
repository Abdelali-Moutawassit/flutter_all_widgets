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
Le widget IntrinsicHeight est utilisé pour conserver la hauteur intrinsèque d'un widget enfant, même lorsque son parent essaie de le redimensionner. Il permet de maintenir la hauteur naturelle d'un widget, comme la hauteur d'un texte ou d'une image.

*Utilisation*:
Utilisez IntrinsicHeight pour:

- Conserver la hauteur naturelle d'un texte ou d'une image
- Empêcher un widget d'être étiré ou compressé verticalement
- Maintenir l'aspect ratio d'un widget en conservant sa hauteur intrinsèque

*Propriétés*:

- child : Le widget enfant dont conserver la hauteur intrinsèque

*Exemple de code*:
        */
        body: Center(
          child: Row(
            children: [
              IntrinsicHeight(
                // Conserver la hauteur du texte
                child: Text(
                  'Texte avec hauteur intrinsèque ok ok',
                  softWrap: false,
                ),
              ),
              Expanded(
                // Widget adjacent qui peut prendre l'espace disponible
                child: Container(color: Colors.blue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
