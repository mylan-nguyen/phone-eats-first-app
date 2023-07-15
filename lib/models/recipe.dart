class Recipe {
  final String title;
  final String imageUrl;
  final String ingredients;
  final String instructions;
  bool isFavourite;

  Recipe({
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.instructions,
    this.isFavourite = false,
  });
}

List<Recipe> recipes = [
  Recipe(
    title: 'Blueberry Waffles',
    imageUrl: 'assets/images/blueberry_waffles.jpg',
    ingredients: '1 ½ cups all-purpose flour, 2 tablespoons granulated sugar, 1 ½ teaspoons baking powder, ½ teaspoon baking soda, ¼ teaspoon salt, 1 cup buttermilk, ½ cup milk, 2 large eggs, 2 tablespoons unsalted melted butter, 1 teaspoon vanilla extract, 1 cup fresh blueberries',
    instructions: '1. Preheat waffle iron. 2. Whisk dry ingredients. 3. Whisk wet ingredients. 4. Combine wet and dry ingredients. 5. Fold in blueberries. 6. Grease waffle iron. 7. Spoon batter onto iron. 8. Cook until golden brown and crisp. 9. Remove waffles from iron. 10. Serve and enjoy!',
  ),
  Recipe(
    title: 'Chocolate Chip Cookies',
    imageUrl: 'assets/images/choco_chip_cookies.jpg',
    ingredients: '2 ¼ cups all-purpose flour, 1 teaspoon baking soda, ½ teaspoon salt, 1 cup unsalted butter (softened), ¾ cup granulated sugar, ¾ cup packed brown sugar, 1 teaspoon vanilla extract, 2 large eggs, 2 cups chocolate chips',
    instructions: '. Preheat oven to 375°F (190°C). 2. In a medium bowl, whisk flour, baking soda, and salt. 3. In a separate bowl, cream together softened butter, granulated sugar, brown sugar, and vanilla extract. 4. Beat in eggs one at a time. 5. Gradually add the dry ingredients to the wet ingredients, mixing well. 6. Stir in chocolate chips. 7. Drop rounded tablespoonfuls of dough onto ungreased baking sheets. 8. Bake for 9-11 minutes or until golden brown. 9. Cool on baking sheets for 2 minutes, then transfer to wire racks to cool completely. 10. Enjoy!',
  ),
  Recipe(
    title: 'Matcha Cookies',
    imageUrl: 'assets/images/matcha_cookies.jpg',
    ingredients: '1 ¾ cups all-purpose flour, 2 tablespoons matcha powder, ½ teaspoon baking powder, ½ cup unsalted butter (softened), ⅓ cup condensed milk, ½ cup granulated sugar, 1 egg',
    instructions: '1. Preheat oven to 350°F (180°C). 2. In a bowl, whisk flour, matcha powder, and baking powder. 3. In a separate bowl, cream butter, condensed milk, and sugar. 4. Beat in the egg. 5. Gradually add the dry ingredients to the wet mixture, mixing until combined. 6. Roll the dough into small balls and place them on a lined baking sheet. 7. Flatten each ball slightly with a fork. 8. Bake for 10-12 minutes or until the edges are lightly golden. 9. Remove from the oven and let the cookies cool on a wire rack. 10. Enjoy these delicious matcha and condensed milk cookies!',
  ),
    Recipe(
    title: 'M&M Brownies',
    imageUrl: 'assets/images/mm_brownies.jpg',
    ingredients: '1 cup unsalted butter, 2 cups granulated sugar, 4 large eggs, 1 teaspoon vanilla extract, ¾ cup cocoa powder, 1 cup all-purpose flour, ½ teaspoon salt, 1 cup M&Ms',
    instructions: '1. Preheat oven to 350°F. 2. Grease a 9x13-inch baking pan. 3. In a microwave-safe bowl, melt butter. 4. In a large mixing bowl, combine melted butter, sugar, eggs, and vanilla extract. 5. Add cocoa powder, flour, and salt, and mix until well combined. 6. Fold in M&M candies. 7. Pour the batter into the prepared pan. 8. Smooth the top with a spatula. 9. Bake for 25-30 minutes or until a toothpick inserted in the center comes out with a few moist crumbs. 10. Remove from the oven and let cool completely before cutting into squares. 11. Enjoy the fudgy M&M brownies!',
  ),
  Recipe(
    title: 'Smores Brownies',
    imageUrl: 'assets/images/smores_brownies.jpg',
    ingredients: '1 cup unsalted butter, 2 cups granulated sugar, 4 large eggs, 1 teaspoon vanilla extract, 1 cup all-purpose flour, 1/2 cup cocoa powder, 1/2 teaspoon salt, 1 1/2 cups graham cracker crumbs, 1 1/2 cups chocolate chips, 3 cups mini marshmallows',
    instructions: '1. Preheat oven to 350°F. 2. In a microwave-safe bowl, melt butter, then whisk in sugar, eggs, and vanilla extract. 3. Stir in flour, cocoa powder, and salt until combined. 4. Spread half of the batter into a greased 9x13-inch baking dish. 5. Sprinkle graham cracker crumbs and half of the chocolate chips over the batter. 6. Layer mini marshmallows on top. 7. Pour the remaining batter over the marshmallows. 8. Sprinkle remaining chocolate chips on top. 9. Bake for 25-30 minutes or until a toothpick inserted into the center comes out with a few moist crumbs. 10. Remove from oven and let cool completely before cutting into squares. Enjoy!',
  ),
  Recipe(
    title: 'Tunacado Sandwich',
    imageUrl: 'assets/images/tunacado_sandwich.jpg',
    ingredients: '2 chicken breasts, 1 bell pepper, 1 onion, 2 cloves of garlic, 3 tbsp soy sauce',
    instructions: '1. Slice chicken, bell pepper, and onion. 2. Heat oil in a pan and cook chicken until browned. 3. Add bell pepper, onion, and garlic. 4. Stir in soy sauce and cook for 5 minutes.',
  ),
  Recipe(
    title: 'Sushi Bake',
    imageUrl: 'assets/images/sushi_bake.jpg',
    ingredients: '2 cups cooked sushi rice, 1 lb (450g) salmon fillet (cut into small pieces), 1/4 cup mayonnaise, 2 tablespoons sriracha sauce, 2 tablespoons soy sauce, 1 tablespoon sesame oil, 1 tablespoon rice vinegar, 1/2 cup cream cheese (softened), 1/4 cup chopped green onions, 1/4 cup furikake seasoning (Japanese rice seasoning), 1 avocado, nori sheets (for serving) chocolate chips, 3 cups mini marshmallows',
    instructions: '1. Preheat oven to 375°F (190°C). 2. In a bowl, mix together mayonnaise, sriracha sauce, soy sauce, sesame oil, and rice vinegar. 3. In a separate bowl, combine salmon, cream cheese, green onions, and half of the furikake seasoning. 4. Spread the sushi rice to the bottom of the baking dish. 5. Layer the salmon mixture on top of the rice. 6. Slice and layer avocado on top of the salmon. 7. Sprinkle the remaining furikake seasoning on top. Layer with mayo, siracha and eel sauce if on hand. 8. Bake for 20-25 minutes, until heated through and slightly golden. 9. Serve the Salmon Sushi Bake with nori sheets for wrapping. Enjoy!',
  ),
  Recipe(
    title: 'Cheesy Japanese Curry',
    imageUrl: 'assets/images/japanese_curry.jpg',
    ingredients: ' 2 boneless chicken breasts (cut into bite-sized pieces), 2 carrots (peeled and sliced), 2 potatoes (peeled and diced), 1 onion (chopped), 2 tablespoons vegetable oil, 2 cups water, 2 cubes Japanese curry roux, 1 cup shredded mozza cheese, cooked rice for serving.',
    instructions: '1. Heat oil in a large pot, sauté onions until translucent. 2. Add chicken and cook until browned. 3. Add carrots, potatoes, and water. 4. Bring to a boil and simmer until vegetables are tender. 5. Add curry roux cubes and stir until dissolved. 6. Simmer for a few minutes to thicken the curry. 7. Turn off heat, sprinkle shredded cheddar cheese over the curry, and let it melt. 8. Serve the cheesy chicken curry over cooked rice. Enjoy!',
  ),
];
