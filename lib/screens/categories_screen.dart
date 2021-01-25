import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      // GridView é semelhante a ListView, porem conseguindo organizar os elementos em grade
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        // Define que um Sliver (area com scroll) se extendera para o tamanho maximo do CrossAxis
        maxCrossAxisExtent: 200, // Tamanho maximo de cada elemento
        childAspectRatio: 3 / 2, // Qual sera a proporção dos elementos
        crossAxisSpacing: 20, // Espaçamento no eixo cruzado
        mainAxisSpacing: 20,
      ),
      children: <Widget>[
        
      ],
    );
  }
}
