import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:indian_tech/components/searchbar.dart';

Future<List> fetchApi() async {
  final response = await http.get(Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=in&category=technology&pageSize=100&apiKey=f2c6db4013d942faa20bb74500eaf573' +
          '&q=' +
          SearchBar.searchcontroller.text));
  Map result = jsonDecode(response.body);
  print('News fetched');
  return (result['articles']);
}
