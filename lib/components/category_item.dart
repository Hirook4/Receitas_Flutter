import 'package:flutter/material.dart';
import '../models/category.dart'; // Sera recebido uma categoria como parametro

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(category.title),
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
