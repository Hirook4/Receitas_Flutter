import 'package:flutter/material.dart'; // Necessario para o atributo Color

class Category {
  // Classe categoria e seus atributos
  final String id;
  final String title;
  final Color color;

  const Category({
    // Como todos os atributos são finais pode ser usado um construtor constante passando os atributos nomeados
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
  });
}
