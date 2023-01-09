class RecipeData {
  final String imgUrl;
  final String name;
  final String categorie;
  final int duration;
  final double rating;
  final int servings;
  final int cal;
  final String difficulty;
  final List<IngredientsClass> ingredients;
  final List<String> directions;


  RecipeData(
      {required this.imgUrl,
      required this.name,
      required this.categorie,
      required this.duration,
      required this.rating,
      required this.servings,
      required this.cal,
      required this.difficulty,
      required this.ingredients,
      required this.directions});
}

class IngredientsClass{
  final String amount;
  final String ingredientName;

  IngredientsClass({required this.amount, required this.ingredientName});
}

List<RecipeData> kdRecipeData = [
  RecipeData(
    imgUrl: 'https://www.allrecipes.com/thmb/WqYjANph8EJTYG4sCkXHstMdj-Y=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/mochi-donuts-mfs-4x3-69-b2eec5be365e4e6cbee53f1e769d6ab6.jpg',
    name: 'Mochi Donuts',
    categorie: 'Bread',
    duration: 80,
    rating: 4.3,
    servings: 9,
    cal: 355,
    difficulty: 'Medium',
    ingredients: [
      IngredientsClass(amount: '1 1/2 cup', ingredientName: 'Mochiko (sweet white rice flour, such as Asian\'s Best), plus more for dusting'),
      IngredientsClass(amount: '1 cup', ingredientName: 'tapioca flour'),
      IngredientsClass(amount: '1/2 cup', ingredientName: 'granulated sugar'),
      IngredientsClass(amount: '1 tablespoon', ingredientName: 'baking powder'),
      IngredientsClass(amount: '1/4 tablespoon', ingredientName: 'kosher salt'),
      IngredientsClass(amount: '3 tablespoon', ingredientName: 'unsalted butter, melted'),
      IngredientsClass(amount: '1 tablespoon', ingredientName: 'vanilla extract'),
      IngredientsClass(amount: '2/3 cup', ingredientName: 'whole milk'),
      IngredientsClass(amount: '1', ingredientName: 'large egg'),
    ],
    directions: [
      'Combine rice flour, tapioca flour, sugar, baking powder, and salt in the bowl of a stand mixer fitted with the paddle attachment. Beat on low speed until combined, 1 minute. Add milk, butter, vanilla, and egg; beat on low speed until a smooth dough forms about 1 to 2 minutes (dough will be slightly sticky).',
      'Lightly dust rice flour onto a clean work surface and turn dough onto surface. Divide dough into quarters and working in batches, roll dough quarters into 18-inch-long ropes about 1-inch wide. Cut each rope into 1-inch pieces. Roll each piece into a ball, wetting hands as needed to help roll (about 72 each for 9 donuts).'
      'Cut 9 square pieces of parchment paper, 5x5-inches, and place in a single layer on a baking sheet. Arrange 8 dough balls onto each piece parchment in a ring about 3 1/2 inches in diameter, connecting them side by side and using water to seal together.',
      'Pour oil to a depth of 2 inches in a large Dutch oven; heat over medium-high to 350 degrees F (175 degrees C).',
      'Place 3 dough rings, along with parchment, in hot oil. Remove parchment with tongs once dough floats to top of oil. Cook until golden and puffed, turning once halfway through, 2 to 3 minutes. Transfer to a wire rack lined with paper towels; cool 10 minutes. Repeat with remaining dough rings.',
      'For the glaze whisk powdered sugar, 2 tablespoons milk, and vanilla together in a medium bowl. Mixture should be the consistency of heavy cream; add up to 1 tablespoon milk, 1 teaspoon at a time, as needed to adjust consistency. Dip tops of 4 or 5 doughnuts into the glaze; place on wire rack (with paper towel removed).',
      'Stir 2 teaspoons dried fruit powder into remaining glaze. Dip remaining doughnuts in the glaze; transfer to wire rack and sprinkle with remaining fruit powder.',
    ],
  ),
  RecipeData(
    imgUrl: 'https://www.allrecipes.com/thmb/PJ8F8YdwHZlaYv20ANWmS3zLI68=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/20338-strawberry-pretzel-salad-humblepieliving-003-1x1-1-320404ea9a4a4878ad6c4f88b2be4061.jpg',
    name: 'Strawberry Pretzel Salad',
    categorie: 'Salad',
    duration: 150,
    rating: 4.7,
    servings: 12,
    cal: 424,
    difficulty: 'Hard',
    ingredients: [
      IngredientsClass(amount: '2', ingredientName: 'eggs'),
      IngredientsClass(amount: '1 cup', ingredientName: 'all purpose flour'),
      IngredientsClass(amount: '1/2 cup', ingredientName: 'whole milk'),
      IngredientsClass(amount: '3 tablespoon', ingredientName: 'unsalted butter, melted'),
    ],
    directions: [
      'Combine rice flour, tapioca flour, sugar, baking powder, and salt in the bowl of a stand mixer fitted with the paddle attachment. Beat on low speed until combined, 1 minute. Add milk, butter, vanilla, and egg; beat on low speed until a smooth dough forms about 1 to 2 minutes (dough will be slightly sticky).',
      'Lightly dust rice flour onto a clean work surface and turn dough onto surface. Divide dough into quarters and working in batches, roll dough quarters into 18-inch-long ropes about 1-inch wide. Cut each rope into 1-inch pieces. Roll each piece into a ball, wetting hands as needed to help roll (about 72 each for 9 donuts).'
      'Cut 9 square pieces of parchment paper, 5x5-inches, and place in a single layer on a baking sheet. Arrange 8 dough balls onto each piece parchment in a ring about 3 1/2 inches in diameter, connecting them side by side and using water to seal together.',
      'Pour oil to a depth of 2 inches in a large Dutch oven; heat over medium-high to 350 degrees F (175 degrees C).',
      'Place 3 dough rings, along with parchment, in hot oil. Remove parchment with tongs once dough floats to top of oil. Cook until golden and puffed, turning once halfway through, 2 to 3 minutes. Transfer to a wire rack lined with paper towels; cool 10 minutes. Repeat with remaining dough rings.',
      'For the glaze whisk powdered sugar, 2 tablespoons milk, and vanilla together in a medium bowl. Mixture should be the consistency of heavy cream; add up to 1 tablespoon milk, 1 teaspoon at a time, as needed to adjust consistency. Dip tops of 4 or 5 doughnuts into the glaze; place on wire rack (with paper towel removed).',
      'Stir 2 teaspoons dried fruit powder into remaining glaze. Dip remaining doughnuts in the glaze; transfer to wire rack and sprinkle with remaining fruit powder.',
    ],
  ),
  RecipeData(
    imgUrl: 'https://www.allrecipes.com/thmb/_CWJscCOPIYez9IJtCUj6xnJmK0=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/6896171-0e4600ea2c6347bd8149342317b80b20.jpg',
    name: 'Easy Chinese Fried Noodles',
    categorie: 'chinese',
    duration: 40,
    rating: 4.3,
    servings: 6,
    cal: 355,
    difficulty: 'Easy',
    ingredients: [
      IngredientsClass(amount: '1 1/2 cup', ingredientName: 'Mochiko (sweet white rice flour, such as Asian\'s Best), plus more for dusting'),
      IngredientsClass(amount: '1 cup', ingredientName: 'tapioca flour'),
      IngredientsClass(amount: '1/2 cup', ingredientName: 'granulated sugar'),
      IngredientsClass(amount: '1 tablespoon', ingredientName: 'baking powder'),
      IngredientsClass(amount: '1/4 tablespoon', ingredientName: 'kosher salt'),
      IngredientsClass(amount: '3 tablespoon', ingredientName: 'unsalted butter, melted'),
      IngredientsClass(amount: '1 tablespoon', ingredientName: 'vanilla extract'),
      IngredientsClass(amount: '2/3 cup', ingredientName: 'whole milk'),
      IngredientsClass(amount: '1', ingredientName: 'large egg'),
    ],
    directions: [
      'Combine rice flour, tapioca flour, sugar, baking powder, and salt in the bowl of a stand mixer fitted with the paddle attachment. Beat on low speed until combined, 1 minute. Add milk, butter, vanilla, and egg; beat on low speed until a smooth dough forms about 1 to 2 minutes (dough will be slightly sticky).',
      'Lightly dust rice flour onto a clean work surface and turn dough onto surface. Divide dough into quarters and working in batches, roll dough quarters into 18-inch-long ropes about 1-inch wide. Cut each rope into 1-inch pieces. Roll each piece into a ball, wetting hands as needed to help roll (about 72 each for 9 donuts).'
      'Cut 9 square pieces of parchment paper, 5x5-inches, and place in a single layer on a baking sheet. Arrange 8 dough balls onto each piece parchment in a ring about 3 1/2 inches in diameter, connecting them side by side and using water to seal together.',
      'Pour oil to a depth of 2 inches in a large Dutch oven; heat over medium-high to 350 degrees F (175 degrees C).',
      'Place 3 dough rings, along with parchment, in hot oil. Remove parchment with tongs once dough floats to top of oil. Cook until golden and puffed, turning once halfway through, 2 to 3 minutes. Transfer to a wire rack lined with paper towels; cool 10 minutes. Repeat with remaining dough rings.',
      'For the glaze whisk powdered sugar, 2 tablespoons milk, and vanilla together in a medium bowl. Mixture should be the consistency of heavy cream; add up to 1 tablespoon milk, 1 teaspoon at a time, as needed to adjust consistency. Dip tops of 4 or 5 doughnuts into the glaze; place on wire rack (with paper towel removed).',
      'Stir 2 teaspoons dried fruit powder into remaining glaze. Dip remaining doughnuts in the glaze; transfer to wire rack and sprinkle with remaining fruit powder.',
    ],
  ),
  RecipeData(
    imgUrl: 'https://www.allrecipes.com/thmb/7Z5i7F59HVA-oG5X3F-yhaIizuw=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/5102314-grilled-asian-chicken-Chef-V-4x3-1-6b85e5c7524c4fbf9090ce71386dfa30.jpg',
    name: 'Grilled Asian Chicken',
    categorie: 'Chinese',
    duration: 50,
    rating: 4.5,
    servings: 4,
    cal: 217,
    difficulty: 'Medium',
    ingredients: [
      IngredientsClass(amount: '1 1/2 cup', ingredientName: 'Mochiko (sweet white rice flour, such as Asian\'s Best), plus more for dusting'),
      IngredientsClass(amount: '1 cup', ingredientName: 'tapioca flour'),
      IngredientsClass(amount: '1/2 cup', ingredientName: 'granulated sugar'),
      IngredientsClass(amount: '1 tablespoon', ingredientName: 'baking powder'),
      IngredientsClass(amount: '1/4 tablespoon', ingredientName: 'kosher salt'),
      IngredientsClass(amount: '3 tablespoon', ingredientName: 'unsalted butter, melted'),
      IngredientsClass(amount: '1 tablespoon', ingredientName: 'vanilla extract'),
      IngredientsClass(amount: '2/3 cup', ingredientName: 'whole milk'),
      IngredientsClass(amount: '1', ingredientName: 'large egg'),
    ],
    directions: [
      'Combine rice flour, tapioca flour, sugar, baking powder, and salt in the bowl of a stand mixer fitted with the paddle attachment. Beat on low speed until combined, 1 minute. Add milk, butter, vanilla, and egg; beat on low speed until a smooth dough forms about 1 to 2 minutes (dough will be slightly sticky).',
      'Lightly dust rice flour onto a clean work surface and turn dough onto surface. Divide dough into quarters and working in batches, roll dough quarters into 18-inch-long ropes about 1-inch wide. Cut each rope into 1-inch pieces. Roll each piece into a ball, wetting hands as needed to help roll (about 72 each for 9 donuts).'
      'Cut 9 square pieces of parchment paper, 5x5-inches, and place in a single layer on a baking sheet. Arrange 8 dough balls onto each piece parchment in a ring about 3 1/2 inches in diameter, connecting them side by side and using water to seal together.',
      'Pour oil to a depth of 2 inches in a large Dutch oven; heat over medium-high to 350 degrees F (175 degrees C).',
      'Place 3 dough rings, along with parchment, in hot oil. Remove parchment with tongs once dough floats to top of oil. Cook until golden and puffed, turning once halfway through, 2 to 3 minutes. Transfer to a wire rack lined with paper towels; cool 10 minutes. Repeat with remaining dough rings.',
      'For the glaze whisk powdered sugar, 2 tablespoons milk, and vanilla together in a medium bowl. Mixture should be the consistency of heavy cream; add up to 1 tablespoon milk, 1 teaspoon at a time, as needed to adjust consistency. Dip tops of 4 or 5 doughnuts into the glaze; place on wire rack (with paper towel removed).',
      'Stir 2 teaspoons dried fruit powder into remaining glaze. Dip remaining doughnuts in the glaze; transfer to wire rack and sprinkle with remaining fruit powder.',
    ],
  ),
  RecipeData(
    imgUrl: 'https://www.allrecipes.com/thmb/XixQhD0zrOlgOwX4jjcMJQ0bKtM=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/M7014949_JD_11480-4x3-1-5e9ce6df7b0346819a27dc0094f7ae1f.jpg',
    name: 'Brown Sugar and Rye Shortbread',
    categorie: 'Dessert',
    duration: 42,
    rating: 4.9,
    servings: 12,
    cal: 157,
    difficulty: 'Medium',
    ingredients: [
      IngredientsClass(amount: '2', ingredientName: 'eggs'),
      IngredientsClass(amount: '1 cup', ingredientName: 'all purpose flour'),
      IngredientsClass(amount: '1/2 cup', ingredientName: 'whole milk'),
      IngredientsClass(amount: '3 tablespoon', ingredientName: 'unsalted butter, melted'),
    ],
    directions: [
      'Combine rice flour, tapioca flour, sugar, baking powder, and salt in the bowl of a stand mixer fitted with the paddle attachment. Beat on low speed until combined, 1 minute. Add milk, butter, vanilla, and egg; beat on low speed until a smooth dough forms about 1 to 2 minutes (dough will be slightly sticky).',
      'Lightly dust rice flour onto a clean work surface and turn dough onto surface. Divide dough into quarters and working in batches, roll dough quarters into 18-inch-long ropes about 1-inch wide. Cut each rope into 1-inch pieces. Roll each piece into a ball, wetting hands as needed to help roll (about 72 each for 9 donuts).'
      'Cut 9 square pieces of parchment paper, 5x5-inches, and place in a single layer on a baking sheet. Arrange 8 dough balls onto each piece parchment in a ring about 3 1/2 inches in diameter, connecting them side by side and using water to seal together.',
      'Pour oil to a depth of 2 inches in a large Dutch oven; heat over medium-high to 350 degrees F (175 degrees C).',
      'Place 3 dough rings, along with parchment, in hot oil. Remove parchment with tongs once dough floats to top of oil. Cook until golden and puffed, turning once halfway through, 2 to 3 minutes. Transfer to a wire rack lined with paper towels; cool 10 minutes. Repeat with remaining dough rings.',
      'For the glaze whisk powdered sugar, 2 tablespoons milk, and vanilla together in a medium bowl. Mixture should be the consistency of heavy cream; add up to 1 tablespoon milk, 1 teaspoon at a time, as needed to adjust consistency. Dip tops of 4 or 5 doughnuts into the glaze; place on wire rack (with paper towel removed).',
      'Stir 2 teaspoons dried fruit powder into remaining glaze. Dip remaining doughnuts in the glaze; transfer to wire rack and sprinkle with remaining fruit powder.',
    ],
  ),
  RecipeData(
    imgUrl: 'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2F4b067cd907c6d86384b336405a8c505e%2F1669095263592IMG_7903.JPG&q=60&c=sc&orient=true&poi=auto&h=512',
    name: 'Chicken Parmesan',
    categorie: 'Italian',
    duration: 45,
    rating: 4.8,
    servings: 4,
    cal: 471,
    difficulty: 'Hard',
    ingredients: [
      IngredientsClass(amount: '4', ingredientName: 'skinless, boneless chicken breast halves'),
      IngredientsClass(amount: '1 tablespoon', ingredientName: 'baking powder'),
      IngredientsClass(amount: '1/4 tablespoon', ingredientName: 'kosher salt'),
      IngredientsClass(amount: '3 tablespoon', ingredientName: 'unsalted butter, melted'),
      IngredientsClass(amount: '2/3 cup', ingredientName: 'whole milk'),
      IngredientsClass(amount: '2', ingredientName: 'large egg'),
    ],
    directions: [
      'Combine rice flour, tapioca flour, sugar, baking powder, and salt in the bowl of a stand mixer fitted with the paddle attachment. Beat on low speed until combined, 1 minute. Add milk, butter, vanilla, and egg; beat on low speed until a smooth dough forms about 1 to 2 minutes (dough will be slightly sticky).',
      'Lightly dust rice flour onto a clean work surface and turn dough onto surface. Divide dough into quarters and working in batches, roll dough quarters into 18-inch-long ropes about 1-inch wide. Cut each rope into 1-inch pieces. Roll each piece into a ball, wetting hands as needed to help roll (about 72 each for 9 donuts).'
      'Cut 9 square pieces of parchment paper, 5x5-inches, and place in a single layer on a baking sheet. Arrange 8 dough balls onto each piece parchment in a ring about 3 1/2 inches in diameter, connecting them side by side and using water to seal together.',
      'Pour oil to a depth of 2 inches in a large Dutch oven; heat over medium-high to 350 degrees F (175 degrees C).',
      'Place 3 dough rings, along with parchment, in hot oil. Remove parchment with tongs once dough floats to top of oil. Cook until golden and puffed, turning once halfway through, 2 to 3 minutes. Transfer to a wire rack lined with paper towels; cool 10 minutes. Repeat with remaining dough rings.',
      'For the glaze whisk powdered sugar, 2 tablespoons milk, and vanilla together in a medium bowl. Mixture should be the consistency of heavy cream; add up to 1 tablespoon milk, 1 teaspoon at a time, as needed to adjust consistency. Dip tops of 4 or 5 doughnuts into the glaze; place on wire rack (with paper towel removed).',
      'Stir 2 teaspoons dried fruit powder into remaining glaze. Dip remaining doughnuts in the glaze; transfer to wire rack and sprinkle with remaining fruit powder.',
    ],
  ),
  RecipeData(
    imgUrl: 'https://www.allrecipes.com/thmb/zCXrS6RgQ-n6Vhka6z3QZ0qXMCQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/229960-Shrimp-Scampi-with-Pasta-mfs-050-09903cd453324332b01e5670eaffbf74.jpg',
    name: 'Shrimp Scampi with Pasta',
    categorie: 'Italian',
    duration: 40,
    rating: 4.6,
    servings: 6,
    cal: 355,
    difficulty: 'Medium',
    ingredients: [
      IngredientsClass(amount: '1 1/2 cup', ingredientName: 'Mochiko (sweet white rice flour, such as Asian\'s Best), plus more for dusting'),
      IngredientsClass(amount: '1 cup', ingredientName: 'tapioca flour'),
      IngredientsClass(amount: '1/2 cup', ingredientName: 'granulated sugar'),
      IngredientsClass(amount: '1 tablespoon', ingredientName: 'baking powder'),
      IngredientsClass(amount: '1/4 tablespoon', ingredientName: 'kosher salt'),
      IngredientsClass(amount: '3 tablespoon', ingredientName: 'unsalted butter, melted'),
      IngredientsClass(amount: '1 tablespoon', ingredientName: 'vanilla extract'),
      IngredientsClass(amount: '2/3 cup', ingredientName: 'whole milk'),
      IngredientsClass(amount: '1', ingredientName: 'large egg'),
    ],
    directions: [
      'Combine rice flour, tapioca flour, sugar, baking powder, and salt in the bowl of a stand mixer fitted with the paddle attachment. Beat on low speed until combined, 1 minute. Add milk, butter, vanilla, and egg; beat on low speed until a smooth dough forms about 1 to 2 minutes (dough will be slightly sticky).',
      'Lightly dust rice flour onto a clean work surface and turn dough onto surface. Divide dough into quarters and working in batches, roll dough quarters into 18-inch-long ropes about 1-inch wide. Cut each rope into 1-inch pieces. Roll each piece into a ball, wetting hands as needed to help roll (about 72 each for 9 donuts).'
      'Cut 9 square pieces of parchment paper, 5x5-inches, and place in a single layer on a baking sheet. Arrange 8 dough balls onto each piece parchment in a ring about 3 1/2 inches in diameter, connecting them side by side and using water to seal together.',
      'Pour oil to a depth of 2 inches in a large Dutch oven; heat over medium-high to 350 degrees F (175 degrees C).',
      'Place 3 dough rings, along with parchment, in hot oil. Remove parchment with tongs once dough floats to top of oil. Cook until golden and puffed, turning once halfway through, 2 to 3 minutes. Transfer to a wire rack lined with paper towels; cool 10 minutes. Repeat with remaining dough rings.',
      'For the glaze whisk powdered sugar, 2 tablespoons milk, and vanilla together in a medium bowl. Mixture should be the consistency of heavy cream; add up to 1 tablespoon milk, 1 teaspoon at a time, as needed to adjust consistency. Dip tops of 4 or 5 doughnuts into the glaze; place on wire rack (with paper towel removed).',
      'Stir 2 teaspoons dried fruit powder into remaining glaze. Dip remaining doughnuts in the glaze; transfer to wire rack and sprinkle with remaining fruit powder.',
    ],
  ),
  RecipeData(
    imgUrl: 'https://www.allrecipes.com/thmb/eBUSgOli6tBHvzUoevbed9a6py4=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/19344_homemade-lasagna_Rita2-3x2-1-7da94c32febf48dfbcc2d29b06f54e67.jpg',
    name: 'Homemade Lasagna',
    categorie: 'Italian',
    duration: 170,
    rating: 4.6,
    servings: 8,
    cal: 638,
    difficulty: 'Hard',
    ingredients: [
      IngredientsClass(amount: '1 1/2 cup', ingredientName: 'Mochiko (sweet white rice flour, such as Asian\'s Best), plus more for dusting'),
      IngredientsClass(amount: '1 cup', ingredientName: 'tapioca flour'),
      IngredientsClass(amount: '1/2 cup', ingredientName: 'granulated sugar'),
      IngredientsClass(amount: '1 tablespoon', ingredientName: 'baking powder'),
      IngredientsClass(amount: '1/4 tablespoon', ingredientName: 'kosher salt'),
      IngredientsClass(amount: '3 tablespoon', ingredientName: 'unsalted butter, melted'),
      IngredientsClass(amount: '1 tablespoon', ingredientName: 'vanilla extract'),
      IngredientsClass(amount: '2/3 cup', ingredientName: 'whole milk'),
      IngredientsClass(amount: '1', ingredientName: 'large egg'),
    ],
    directions: [
      'Combine rice flour, tapioca flour, sugar, baking powder, and salt in the bowl of a stand mixer fitted with the paddle attachment. Beat on low speed until combined, 1 minute. Add milk, butter, vanilla, and egg; beat on low speed until a smooth dough forms about 1 to 2 minutes (dough will be slightly sticky).',
      'Lightly dust rice flour onto a clean work surface and turn dough onto surface. Divide dough into quarters and working in batches, roll dough quarters into 18-inch-long ropes about 1-inch wide. Cut each rope into 1-inch pieces. Roll each piece into a ball, wetting hands as needed to help roll (about 72 each for 9 donuts).'
      'Cut 9 square pieces of parchment paper, 5x5-inches, and place in a single layer on a baking sheet. Arrange 8 dough balls onto each piece parchment in a ring about 3 1/2 inches in diameter, connecting them side by side and using water to seal together.',
      'Pour oil to a depth of 2 inches in a large Dutch oven; heat over medium-high to 350 degrees F (175 degrees C).',
      'Place 3 dough rings, along with parchment, in hot oil. Remove parchment with tongs once dough floats to top of oil. Cook until golden and puffed, turning once halfway through, 2 to 3 minutes. Transfer to a wire rack lined with paper towels; cool 10 minutes. Repeat with remaining dough rings.',
      'For the glaze whisk powdered sugar, 2 tablespoons milk, and vanilla together in a medium bowl. Mixture should be the consistency of heavy cream; add up to 1 tablespoon milk, 1 teaspoon at a time, as needed to adjust consistency. Dip tops of 4 or 5 doughnuts into the glaze; place on wire rack (with paper towel removed).',
      'Stir 2 teaspoons dried fruit powder into remaining glaze. Dip remaining doughnuts in the glaze; transfer to wire rack and sprinkle with remaining fruit powder.',
    ],
  ),
  RecipeData(
    imgUrl: 'https://www.allrecipes.com/thmb/StRA5iFUxZBT6Z7jeTEYEWI59pw=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/Agua-de-Jamaica-Iced-Hibiscus-Tea-Tammy-Lynn-4x-2000-1aaa7493f9ea44e6b15247af6cc663ec.jpg',
    name: 'Agua de Jamaica (Iced Hibiscus Tea)',
    categorie: 'Drinks',
    duration: 60,
    rating: 4.8,
    servings: 16,
    cal: 97,
    difficulty: 'Medium',
    ingredients: [
      IngredientsClass(amount: '1 1/2 cup', ingredientName: 'Mochiko (sweet white rice flour, such as Asian\'s Best), plus more for dusting'),
      IngredientsClass(amount: '1 cup', ingredientName: 'tapioca flour'),
      IngredientsClass(amount: '1/2 cup', ingredientName: 'granulated sugar'),
      IngredientsClass(amount: '1 tablespoon', ingredientName: 'baking powder'),
      IngredientsClass(amount: '1/4 tablespoon', ingredientName: 'kosher salt'),
      IngredientsClass(amount: '3 tablespoon', ingredientName: 'unsalted butter, melted'),
      IngredientsClass(amount: '1 tablespoon', ingredientName: 'vanilla extract'),
      IngredientsClass(amount: '2/3 cup', ingredientName: 'whole milk'),
      IngredientsClass(amount: '1', ingredientName: 'large egg'),
    ],
    directions: [
      'Combine rice flour, tapioca flour, sugar, baking powder, and salt in the bowl of a stand mixer fitted with the paddle attachment. Beat on low speed until combined, 1 minute. Add milk, butter, vanilla, and egg; beat on low speed until a smooth dough forms about 1 to 2 minutes (dough will be slightly sticky).',
      'Lightly dust rice flour onto a clean work surface and turn dough onto surface. Divide dough into quarters and working in batches, roll dough quarters into 18-inch-long ropes about 1-inch wide. Cut each rope into 1-inch pieces. Roll each piece into a ball, wetting hands as needed to help roll (about 72 each for 9 donuts).'
      'Cut 9 square pieces of parchment paper, 5x5-inches, and place in a single layer on a baking sheet. Arrange 8 dough balls onto each piece parchment in a ring about 3 1/2 inches in diameter, connecting them side by side and using water to seal together.',
      'Pour oil to a depth of 2 inches in a large Dutch oven; heat over medium-high to 350 degrees F (175 degrees C).',
      'Place 3 dough rings, along with parchment, in hot oil. Remove parchment with tongs once dough floats to top of oil. Cook until golden and puffed, turning once halfway through, 2 to 3 minutes. Transfer to a wire rack lined with paper towels; cool 10 minutes. Repeat with remaining dough rings.',
      'For the glaze whisk powdered sugar, 2 tablespoons milk, and vanilla together in a medium bowl. Mixture should be the consistency of heavy cream; add up to 1 tablespoon milk, 1 teaspoon at a time, as needed to adjust consistency. Dip tops of 4 or 5 doughnuts into the glaze; place on wire rack (with paper towel removed).',
      'Stir 2 teaspoons dried fruit powder into remaining glaze. Dip remaining doughnuts in the glaze; transfer to wire rack and sprinkle with remaining fruit powder.',
    ],
  ),
];
