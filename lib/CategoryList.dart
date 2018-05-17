import 'package:flutter/material.dart';
import 'package:hello_rectangle/CategoryWidget.dart';

class CategoryList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final _categories = <CategoryWidget>[];
    getCategories(_categories);
    return new ListView.builder(
      itemBuilder: (BuildContext context, int index) => _categories[index],
      itemCount: _categories.length
    );
  }

  void getCategories(List<CategoryWidget> _categories) {
    _categories.add(new CategoryWidget("Home", Icons.home));
    _categories.add(new CategoryWidget("Cake", Icons.cake));
    _categories.add(new CategoryWidget("Printer", Icons.print));
  }
}