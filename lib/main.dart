import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:testairasia/model/modelpresents.dart';
import 'package:testairasia/model/modelwhishlist.dart';

void main() {
  List<ModelWhishList> whishList = [
    const ModelWhishList(
        name: 'Mini Puzzle', size: 'small', clatters: 'yes', weight: 'light'),
    const ModelWhishList(
        name: 'tony car', size: 'medium', clatters: 'a bit', weight: 'medium'),
  ];
  List<ModelPresents> presents = [
    const ModelPresents(size: 'medium', clatters: 'a bit', weight: 'medium'),
    const ModelPresents(size: 'small', clatters: 'yes', weight: 'light'),
  ];
  List<String> newGuessPresents = [];
  final result = whishList.where((element) {
    for (int i = 0; i < presents.length; i++) {
      if (element.size == presents[i].size &&
          element.clatters == presents[i].clatters &&
          element.weight == presents[i].weight) {
        newGuessPresents.add(element.name);
        return true;
      }
    }
    return false;
  });

  newGuessPresents.forEach((element) {
    return print(element);
  });
}
