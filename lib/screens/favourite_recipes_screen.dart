import 'package:flutter/material.dart';
import 'package:recipe_app/screens/recipe_detail_screen.dart';
import 'package:recipe_app/screens/recipe_card.dart';
import 'package:recipe_app/models/recipe.dart';

class FavouriteRecipesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Recipe> favouriteRecipes = recipes.where((recipe) => recipe.isFavourite).toList();

    if (favouriteRecipes.isEmpty) {
      return Center(
        child: Text('No favourite recipes.'),
      );
    }

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: favouriteRecipes.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeDetailScreen(recipe: favouriteRecipes[index]),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Image.asset(
              favouriteRecipes[index].imageUrl,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
