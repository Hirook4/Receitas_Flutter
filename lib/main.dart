import 'package:flutter/material.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receitas',
      theme: ThemeData(
        primarySwatch: Colors.purple, // Cor principal do tema
        accentColor: Colors.yellow, // Cor de destaque do tema
        fontFamily: 'Raleway', // Fonte do tema
        canvasColor: Colors.white, // Cor do plano de fundo do App
        textTheme: ThemeData.light().textTheme.copyWith( // Definindo um ThemeData com a versão light (que ja passui coisas pré configuradas)
              title: TextStyle( // Nesse caso vamos apenas mudar o title do tema "light" mantendo as outras configurações padrão
                fontSize: 20, // Font Size desse titulo
                fontFamily: 'RobotoCondensed', // Fonte desse titulo
              ),
            ),
      ),
      home: CategoriesScreen(), // Chama a tela categories_screen.dart
    );
  }
}
