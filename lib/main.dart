import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

var url = Uri.parse('https://api.hgbrasil.com/finance?format=json&key=853c4b1c');

void main() async {

  http.Response response = await http.get(url);
  print(json.decode(response.body)['results']);
  
  runApp(
    MaterialApp(
      home: Container(),
    ),
  );
}
