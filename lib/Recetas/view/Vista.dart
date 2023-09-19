import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mvc/Recetas/controller/recetaController.dart';
import 'package:flutter_mvc/Recetas/model/Recetamodelo.dart';

import 'package:provider/provider.dart';
import 'package:intl/intl.dart';




class RecipeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext contexto) {
    final controladoreceta = Provider.of<recetaController>(contexto);
    final recetas = recetaController._receta;

    return Scaffold(
      appBar: AppBar(
        title: Text('Recetas'),
      ),
      body: recetaController.isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: recetas.length,
              itemBuilder: (contexto, index) {
                final receta = recetas[index];
                return ListTile(
                  title: Text(receta.instrucciones),
                  subtitle: Text(receta.prepTime),
                  onTap: () {
                    Navigator.push(
                      contexto,
                      MaterialPageRoute(
                        builder: (contexto) => DetallesReceta(receta: receta),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}

class DetallesReceta extends StatelessWidget {
  final Receta receta;

  const DetallesReceta({required this.receta});

  @override
  Widget build(BuildContext contexto) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles receta'),
      ),
      body: Column(
        children: [
          Text('Instructions: ${receta.instrucciones}'),
          Text('Prep Time: ${receta.prepTime}'),
          Text('Calories: ${receta.calorias}'),
          Text('Ingredientes:'),
          ListView.builder(
            shrinkWrap: true,
            itemCount: receta.ingredientes.length,
            itemBuilder: (contexto, index) {
              final ingrediente = receta.ingredientes[index];
              final costoingrediente = receta.costoingrediente[index];
              final formattedCost = NumberFormat.currency(
                locale: Localizations.localeOf(contexto).toString(),
                symbol: '\$',
              ).format(costoingrediente);

              return ListTile(
                title: Text(ingrediente),
                subtitle: Text('Cost: $formattedCost'),
              );
            },
          ),
          Text('Total Cost: ${NumberFormat.currency(
            locale: Localizations.localeOf(contexto).toString(),
            symbol: '\$',
          ).format(receta.costoTotal)}'),
        ],
      ),
    );
  }
}




