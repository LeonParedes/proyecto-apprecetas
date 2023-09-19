// ignore_for_file: inference_failure_on_untyped_parameter, avoid_dynamic_calls

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:apprecetas/Recetas/model/Recetamodelo.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;


class recetaController extends ChangeNotifier {
  Map<Receta> receta= [];

 
  Future<void> fetchRecipeFromAPI() async {
    try {
      final response = await http.get(Uri.parse(
          'https://api.spoonacular.com/recipes/complexSearch?apiKey=51c154fe3edb4db4a630911664fc7f55&query=beef&number=15'));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'];

         unareceta = results.Map<Receta>((result) {
          final instrucciones = result['instructions'];
          final prepTime = result['prepTime'];
          final calorias = result['calories'];
          final ingredientes = result['ingredients'];
          final costoingrediente = result['costOfIngredient'];
          final costoTotal = result['costTotal'];

          return Receta(
            instrucciones: instrucciones,
            prepTime: prepTime,
            calorias: calorias,
            ingredientes: ingredientes.cast<String>(),
            costoingrediente: costoingrediente.cast<double>(),
            costoTotal: costoTotal.toDouble(),
          );
        }).toList();

        notifyListeners();
      } else {
        throw Exception('Failed to fetch recipes');
      }
    } catch (error) {
      throw Exception('Failed to fetch recipes: $error');
    }
  }
}