import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hiflutter/models/entry_model.dart';

class PremiumEntries {
  String name;
  String description;
  Icon bookmarkIcon;

  List<Entry> entries;

  PremiumEntries({this.name, this.description, this.bookmarkIcon});
}

List<Entry> entries = [
  Entry(
      name: 'NL&US Cosmetics Free',
      description: 'Online cosmetics',
      bookmarkIcon: Icon(Icons.bookmark)),
  Entry(
      name: 'Samsung LLC',
      description: 'Online cosmetics',
      bookmarkIcon: Icon(Icons.bookmark)),
  Entry(
      name: 'Samsung LLC',
      description: 'Online cosmetics',
      bookmarkIcon: Icon(Icons.bookmark)),
  Entry(
      name: 'Samsung LLC',
      description: 'Online cosmetics',
      bookmarkIcon: Icon(Icons.bookmark)),
  Entry(
      name: 'Samsung LLC',
      description: 'Online cosmetics',
      bookmarkIcon: Icon(Icons.bookmark)),
];
