import 'package:flutter/material.dart';
import '../models/category.dart'; // Sera recebido uma categoria como parametro

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(
        category.title,
        style: Theme.of(context).textTheme.title, // Usando tema definido no main.dart linha 15
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
    );
  }
}
