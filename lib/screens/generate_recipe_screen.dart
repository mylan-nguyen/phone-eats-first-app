import 'package:flutter/material.dart';
import 'package:recipe_app/models/recipe.dart';
import 'package:recipe_app/screens/recipe_detail_screen.dart';

class GenerateRecipeScreen extends StatefulWidget {
  @override
  _GenerateRecipeScreenState createState() => _GenerateRecipeScreenState();
}

class _GenerateRecipeScreenState extends State<GenerateRecipeScreen> {
  final _formKey = GlobalKey<FormState>();
  final _ingredientsController = TextEditingController();
  List<Recipe> _generatedRecipes = [];

  @override
  void dispose() {
    _ingredientsController.dispose();
    super.dispose();
  }

  void _generateRecipes() {
    setState(() {
      _generatedRecipes = recipes
          .where((recipe) =>
              recipe.ingredients.toLowerCase().contains(_ingredientsController.text.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _ingredientsController,
                decoration: InputDecoration(labelText: 'Enter Ingredients'),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter ingredients';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _generateRecipes();
                  }
                },
                child: Text('Generate Recipes'),
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: _generatedRecipes.isNotEmpty
                    ? ListView.builder(
                        itemCount: _generatedRecipes.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(_generatedRecipes[index].title),
                            subtitle: Text(_generatedRecipes[index].ingredients),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      RecipeDetailScreen(recipe: _generatedRecipes[index]),
                                ),
                              );
                            },
                          );
                        },
                      )
                    : Center(
                        child: Text('No recipes found.'),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
