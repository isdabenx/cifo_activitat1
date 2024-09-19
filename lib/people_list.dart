import 'custom_tile.dart';
import 'package:flutter/material.dart';
import 'package:random_name_generator/random_name_generator.dart';

class PeopleList extends StatefulWidget {
  const PeopleList({super.key});
  @override
  State<PeopleList> createState() => _PeopleListState();
}

class _PeopleListState extends State<PeopleList> {
  final _suggestions = <String>[];
  final _randomNames = RandomNames(Zone.catalonia);
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      if (_suggestions.length <= index) {
        _suggestions.add(_randomNames.fullName());
      }
      return CustomTile(name: _suggestions[index], style: _biggerFont);
    });
  }
}
