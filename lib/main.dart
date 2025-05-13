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
Le widget AspectRatio est utilisé pour maintenir le rapport d'aspect (largeur/hauteur) d'un widget enfant, même lorsque les dimensions de son parent changent. Il permet de conserver la forme originale d'un widget lors du redimensionnement.

*Utilisation*:
Utilisez AspectRatio pour:

- Conserver le rapport d'aspect d'une image ou d'une vidéo
- Maintenir la forme d'un widget personnalisé lors du redimensionnement
- Créer des layouts responsifs qui conservent les proportions des éléments

*Propriétés*:

- child : Le widget enfant dont conserver le rapport d'aspect
- aspectRatio : Le rapport d'aspect souhaité (par exemple, 16/9)
- height et width sont facultatifs mais si utilisé aspectRatio est ignoré

*Exemple de calcul de aspectRatio*:

- Pour une image 1920x1080 : aspectRatio = 1920 / 1080 = 1.78 (ou 16/9)
- Pour une vidéo 1280x720 : aspectRatio = 1280 / 720 = 1.78 (ou 16/9)

*Exemple de code*:
        */
        body: Center(
          child: Container(
            height: 600,
            width: 200,
            color: Colors.amber,
            child: AspectRatio(
              aspectRatio: 10 / 9,
              child: Image.asset("images/image.png"),
            ),
          ),
        ),
      ),
    );
  }
}
