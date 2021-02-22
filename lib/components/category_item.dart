import 'package:flutter/material.dart';
import '../models/category.dart'; // Sera recebido uma categoria como parametro
import '../screens/categories_meals_screen.dart'; // Importando tela que sera usada

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    // Metodo que sera chamado no onTap do Widget InkWell
    Navigator.of(context).push(
      // Navigaror sera chamado e fara um "push" da tela na pilha de telas
      MaterialPageRoute(
        builder: (_) {
          return CategoriesMealsScreen(); // Tela que sera chamada
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // Widget que tornara o Container "clicavel"
      onTap: () => _selectCategory(context),
      splashColor:
          Theme.of(context).primaryColor, // Animação de clique nos Containers
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          category.title,
          style: Theme.of(context)
              .textTheme
              .title, // Usando tema definido no main.dart linha 15
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
            colors: [
              // Sera usado a cor recebida + uma variação dela
              category.color.withOpacity(0.8),
              category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight, // Como sera o efeito gradient
          ),
        ),
      ),
    );
  }
}
