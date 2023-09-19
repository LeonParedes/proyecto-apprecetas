import 'package:apprecetas/Recetas/view/Vista.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:apprecetas/Recetas/controller/recetaController.dart';
import 'package:provider/provider.dart';

void main() {
//runApp(MyApp());
 var controller = recetaController();
 controller.fetchRecipeFromAPI();


}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => recetaController(),
      child: MaterialApp(
        title: 'Recipe App',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', 'US'),
          const Locale('es', 'ES'),
        ],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: RecipeListScreen(),
      ),
    );
  }
}