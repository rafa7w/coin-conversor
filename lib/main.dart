import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

var url =
    Uri.parse('https://api.hgbrasil.com/finance?format=json&key=853c4b1c');

void main() async {
  runApp(
    MaterialApp(
      home: Container(),
    ),
  );
}

Future<Map> getData() async {
  http.Response response = await http.get(url);
  return json.decode(response.body);
}
