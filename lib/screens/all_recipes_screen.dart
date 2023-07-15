import 'package:flutter/material.dart';
import 'package:recipe_app/screens/favourite_recipes_screen.dart' as Favorites;
import 'package:recipe_app/screens/recipe_card.dart';
import 'package:recipe_app/models/recipe.dart';
import 'package:recipe_app/screens/recipe_detail_screen.dart';

class AllRecipesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailScreen(recipe: recipes[index]),
                ),
              );
            },
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Image.asset(
                    recipes[index].imageUrl,
                    height: double.infinity,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8.0,
                  right: 8.0,
                  child: IconButton(
                    icon: Icon(
                      recipes[index].isFavourite ? Icons.favorite : Icons.favorite_border,
                      color: recipes[index].isFavourite ? Colors.red : Colors.grey,
                    ),
                    onPressed: () {
                      recipes[index].isFavourite = !recipes[index].isFavourite;
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
