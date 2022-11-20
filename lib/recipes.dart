// This contains the recipe class and its data
enum Type {
    turkey,
    dessert,
    drinks,
}

class Recipe {
  final String name;
  final String image;
  final String text;
  final Type type;

  Recipe(this.name, this.image, this.text, this.type);

  static List<Recipe> recipes = [
    Recipe(
      "Garlic Herb Butter Roast Turkey",
      "images/GARLIC TURKEy.jpg",
      "Before roasting, slather it with garlic herb butter all over AND under the skin to help retain all of the juices. I find melted butter works better to get all of those flavours evenly over the bird. Place turkey, breast-side down, over garlic, lemon and herbs. The aromatics will continuously cook through the meat — from the inside and outside. Slather it with the garlic herb butter during the cooking process. This creates an incredible golden skin. Take your time. Don't speed up the cooking process while roasting as it may cook unevenly. A meat thermometer is crucial to help you know exactly when your turkey is cooked through.",
      Type.turkey
    ),

    Recipe(
      "Simple Roast Chicken (for turkey haters)",
      "images/SIMPLE ROAST TURKEY.jpg",
      "Step 1 Remove any giblets from the cavity and reserve for stock or gravy. Pat turkey and turkey neck dry with paper towel; rub turkey all over with ½ teaspoon salt per pound of turkey, the pepper and the lemon zest, including the neck. Transfer to a 2-gallon (or larger) resealable plastic bag. Tuck herbs and 6 garlic cloves inside bag. Seal and refrigerate on a small rimmed baking sheet (or wrapped in another bag) for at least 1 day and up to 3 days, turning the bird over every day (or after 12 hours if brining for only 1 day). Step 2 Remove turkey from bag and pat dry with paper towels. Place turkey, uncovered, back on the baking sheet. Return to the refrigerator for at least 4 hours and up to 12 hours to dry out the skin (this helps crisp it). Step 3 When you are ready to cook the turkey, remove it from the refrigerator and allow it to come to room temperature for one hour. Step 4 Heat oven to 450 degrees. In the bottom of a large roasting pan, add the cider and enough wine to fill the pan to a ¼-inch depth. Add half the onions, the remaining 6 garlic cloves and the bay leaves. Stuff the remaining onion quarters and the lemon quarters into the turkey cavity. Brush the turkey skin generously with oil or melted butter. Step 5 Place turkey, breast side up, on a roasting rack set inside the roasting pan. Transfer pan to the oven and roast 30 minutes. Cover breast with aluminum foil. Reduce oven temperature to 350 degrees and continue roasting until an instant-read thermometer inserted in the thickest part of a thigh reaches a temperature of 165 degrees, about 1½ to 2 hours more. Transfer turkey to a cutting board to rest for 30 minutes before carving.",
      Type.turkey
    ),

    Recipe(
      "Crisp-Skinned Spatchcocked (Butterflied) Roast Turkey With Gravy Recipe"  ,
      "images/CRISPY TURKEY.webp",
      '''Adjust oven rack to middle position and preheat oven to 450°F. Line a rimmed baking sheet or broiler pan with aluminum foil. Scatter 2/3rds of onions, carrots, celery and thyme sprigs across bottom of pan. Place slotted broiler rack or wire rack directly on top of vegetables.
      Pat turkey dry with paper towels and rub on all surfaces with 1 tablespoon oil. Season liberally on all surfaces with salt and black pepper. (If using a brined, salted, or Kosher turkey, omit salting step; see note.) Tuck wing tips behind back. Place turkey on top of rack, arranging so that it does not overlap the edges, pressing down on the breast bone to flatten the breasts slightly.
Transfer turkey to oven and roast, rotating occasionally, until an instant read thermometer inserted into the deepest part of the breast registers 150°F, and the thighs register at least 165°F, about 80 minutes.
While turkey roasts, make the gravy. Roughly chop the neck, backbone, and giblets. Heat remaining 1 tablespoon oil in a 3-quart saucepan over high heat until shimmering. Add chopped turkey parts and cook, stirring occasionally, until lightly browned, about 5 minutes. Add remaining onions, carrots, and celery and continue to cook, stirring occasionally, until vegetables start to soften and brown in spots, another 5 minutes. Add chicken or turkey stock, remaining thyme, and bay leaves. Bring to a boil and reduce to a bare simmer. Allow to cook 45 minutes, then strain through a fine mesh strainer into a 2-quart liquid measuring cup and discard solids. Skim off any fat from the surface of the broth.
Melt butter over medium-high heat in a 2-quart saucepan. Add flour and cook, stirring constantly until flour is golden brown, about 3 minutes. Whisking constantly, add broth in a thin, steady stream until it is all incorporated. Bring to a boil, reduce to a simmer, and cook until reduced to about 1 quart, about 20 minutes longer. Season to taste with salt and pepper, cover, and keep gravy warm.
When turkey is cooked, remove from oven and transfer rack to a new baking sheet. Allow to rest at room temperature for 20 minutes before carving. Carefully pour any collected juices from out of the roasting pan through a fine-mesh strainer into a liquid measuring cup. Skim off excess fat and discard. Whisk juices into gravy.
Carve turkey and serve with gravy.''',
      Type.turkey
    ),

    Recipe(
      "Pecan Pie",
      "images/PECAN PIE.webp",
      '''Preheat the oven to 350°F
Preheat the oven and position a rack in the center.
Mix the filling:
Preheat oven to 350°F. In a medium bowl vigorously mix together the eggs, brown sugar, corn syrup, molasses, melted butter, vanilla, and salt, until smooth. (No need for a mixer, you can beat by hand using a wooden spoon.)

Fill the pie shell:
Spread the chopped pecans over the bottom of a frozen pie shell. Pour the filling over the pecans. Don't worry about burying the pecans, they will rise to the surface. (If you have reserved a few whole pecan halves, you can arrange them on the surface in a decorative pattern. Just dip them below the wet filling and let them rise again so they get coated with the filling.)
Bake the filled pie:
Bake at 350°F for 30 minutes. After 30 minutes tent the pie loosely with aluminum foil to prevent the crust and pecans from getting too browned. Bake for another 35 to 45 minutes until the filling has set. The pie should be a bit wiggly in the center.

Remove from the oven and let cool completely:
Note that the pie will be puffed up a bit when you first take it out of the oven. It will settle as it cools.
''',
      Type.dessert
    ),

    Recipe(
      "Apple Pie",
      "images/APPLE PIE.jpg",
      '''Make the pie crust recipe and chill per instructions while preparing the filling. Preheat oven to 425˚F.
Melt butter in a medium saucepan over medium heat. Whisk in 3 Tbsp flour then simmer for 1 minute, whisking constantly. Whisk in 1/4 cup water, 1 cup sugar and bring to a boil. Reduce heat and continue simmering 3 minutes, whisking frequently then remove from heat.
Peel, remove cores and thinly slice 7 cups of apples and place them in a large bowl. Sprinkle the top with 1 1/2 tsp cinnamon and toss to combine. Pour the sauce over the apples and stir to coat the apple slices.
Sprinkle your work surface with flour and roll out bottom pie crust to a 12" diameter circle. Wrap it around your rolling pin to transfer it to the 9" pie plate. Add apple mixture, mounding slightly in the center and being careful not to get the filling on the edges which would make it difficult to seal.
Roll second crust into an 11" round and cut into 10 even thickness strips using a pizza cutter. Arrange strips in a woven lattice pattern over the top (see video tutorial). Beat together 1 egg and 1 Tbsp water and brush the top with egg mixture.
Bake at 425˚F in the center of the oven for 15 minutes. Reduce the heat to 350˚F and continue baking another 45 minutes or until apples are soft and filling is bubbling through the vents.* Rest at room temp 1 hour before serving.''',
      Type.dessert
    ),

    Recipe(
      "Aaruul",
      "images/AARUUL.jpg",
      '''Leave the milk (usually from cattle, yaks, camels) to curdle. Lift out the solid components with a fine cloth and let as much of the liquid drip off. Then press the mass into a cake of a few cm height between two wooden boards, weighted down with stones.
Cut the solid cake into pieces of about 10 length. Arrange the pieces on a wooden board and put them into the sun for drying. In Mongolia, this happens on the roof of the yurt. A cover of fine white cloth will keep the birds away.
''',
      Type.dessert
    ),

    Recipe(
      "Airag",
      "images/AIRAG.webp",
      "Airag is fermented mare's milk and one of the classic Mongolian drinks. We put the milk into a sheep stomach to make it sour. Pound vigorously with a stick for an hour to help fermentation. Then we sit it 3-4 hours for fermentation. We prefer to drink Airag when it is fresh. We believe it helps to clean the system. However, we don't suggest you drink much.",
      Type.drinks
    ),

    Recipe(
      "Uncle Gus's Margarita",
      "images/MARGRARITA.jpg",
      "Mix equal parts buddweiser, lemononade, vodka, and ice. Serve with a warm smile. Love uncle Gus <3.",
      Type.drinks
    ),

    Recipe(
      "Melted Butter",
      "images/MELTED BUTTER.jpg",
      "Melt butter. Serve raw.",
      Type.drinks
    )
  ];
}