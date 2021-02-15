import 'package:flutter/material.dart';
import 'package:receitas/models/category.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vamos Cozinhar!'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        // GridView é semelhante a ListView, porem conseguindo organizar os elementos em grade
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          // Define que um Sliver (area com scroll) se extendera para o tamanho maximo do CrossAxis
          maxCrossAxisExtent: 200, // Tamanho maximo de cada elemento
          childAspectRatio: 3 / 2, // Qual sera a proporção dos elementos
          crossAxisSpacing: 20, // Espaçamento no eixo cruzado
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((cat) {
          return CategoryItem(cat);
        }).toList(),
      ),
    );
  }
}
