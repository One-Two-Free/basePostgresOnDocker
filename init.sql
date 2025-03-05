DROP TABLE IF EXISTS recipe_ingredients;
DROP TABLE IF EXISTS recipes_photos;
DROP TABLE IF EXISTS ingredients;
DROP TABLE IF EXISTS recipes;

CREATE TABLE ingredients (
  id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title VARCHAR ( 255 ) UNIQUE NOT NULL,
  type VARCHAR ( 50 ) CHECK (type IN ('meat','fruit','vegetable','other')),
  image VARCHAR ( 255 )
);
CREATE TABLE recipes (
  recipe_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title VARCHAR ( 255 ) UNIQUE NOT NULL,
  body TEXT
);
CREATE TABLE recipes_photos (
  photo_id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  url VARCHAR(255) NOT NULL,
  recipe_id INTEGER REFERENCES recipes(recipe_id) ON DELETE CASCADE
);
CREATE TABLE recipe_ingredients (
  recipe_id INTEGER REFERENCES recipes(recipe_id) ON DELETE NO ACTION,
  ingredient_id INTEGER REFERENCES ingredients(id) ON DELETE NO ACTION,
  CONSTRAINT recipe_ingredients_pk PRIMARY KEY (recipe_id, ingredient_id)
);

INSERT INTO
  recipes
  (title, body)
VALUES
  ('Cookies', 'very yummy'),
  ('Empanada','ugh so good'),
  ('Jollof Rice', 'spectacular'),
  ('Shakshuka','absolutely wonderful'),
  ('Khachapuri', 'breakfast perfection'),
  ('Xiao Long Bao', 'god I want some dumplings right now'),
  ('Dream Chocolate Chip Cookies', 'The chocolate chip cookie that only existed in my dreams...so far!\n\n1. Add 114gr chocolate (70%) choppped\n2. Add 30 gr butter\n3. Add 40gr flour\n4. Add 1/2 teaspoon baking powder\n5. Add Pinch of salt\n6. Add 1 large egg\n7. Add 80gr brown sugar\n8. Add 1/2 teaspoon vanilla\n9. Add 170gr chocolate (70%) chips'),
  ('Romanov Russian Black Bread', 'Delicious traditional Russian black bread.\n\n1. Add 1 cup warm water (110 degrees F/45 degrees C)\n2. Add 1/3 cup dark corn syrup\n3. Add 2 (.25 ounce) envelopes active dry yeast\n4. Add 2 teaspoons salt\n5. Add 5 cups dark rye flour, or as needed'),
  ('Asparagus Angel Hair Pasta', 'I whipped this up one evening for dinner and was amazed how delicious it turned out!  Somewhat unusual combination, but you will LOVE it...I know my kids and I sure did!\n\n1. Add 1 (16 ounce) package angel hair pasta\n2. Add 1/4 cup extra virgin olive oil, divided\n3. Add 2 cloves garlic, minced\n4. Add 1 pound fresh asparagus spears, trimmed and chopped\n5. Add 2 cups grape tomatoes, halved\n6. Add 1 (14.5 ounce) can chicken broth\n7. Add 1 teaspoon dried dill weed\n8. Add freshly ground black pepper to taste\n9. Add 2 avocados - peeled, pitted, and mashed\n10. Add 1/2 lime, juiced\n11. Add 1/2 teaspoon garlic powder\n12. Add 1 cup shredded queso asadero (white Mexican cheese)'),
  ('Pan-fried venison with blackberry sauce', 'Blackberries are delicious in savoury sauces, and this version is the perfect match for the richly flavoured venison\n\n1. Add 1 tbsp olive oil\n2. Add 2 thick venison steaks, or 4 medallions\n3. Add 1 tbsp balsamic vinegar\n4. Add 150ml beef stock (made with 2 tsp Knorr Touch of Taste beef concentrate)\n5. Add 2 tbsp redcurrant jelly\n6. Add 1 garlic clove , crushed\n7. Add 85g fresh or frozen blackberries'),
  ('Cream of Broccoli Soup III', 'A great mixture of vegetables in a cream soup.\n\n1. Add 1 onion, chopped\n2. Add 1 carrot, diced\n3. Add 1 clove garlic, chopped\n4. Add 3 cups chicken broth\n5. Add 1 stalk celery, diced\n6. Add 3 cups chopped broccoli\n7. Add 2 cups milk\n8. Add 1 teaspoon salt\n9. Add 1 pinch ground black pepper'),
  ('Grilled Whitefish with Lemon-Tarragon Sauce', 'Find the recipe for Grilled Whitefish with Lemon-Tarragon Sauce and other fish recipes at Epicurious.com\n'),
  ('Lobster Macaroni and Cheese', 'Find the recipe for Lobster Macaroni and Cheese and other lobster recipes at Epicurious.com\n'),
  ('Carrot-Raisin Salad (Bunny Salad)', 'This is great for Easter, but we love it anytime! My kids love making and eating ''Bunny Salad'', and they have no idea they are voluntarily ingesting veggies. =)\n\n1. Add 4 carrots, grated\n2. Add 2 apples, chopped\n3. Add 1 stalk celery, chopped\n4. Add 1 tablespoon lemon juice\n5. Add 1/2 cup raisins\n6. Add 1/2 cup vanilla yogurt\n7. Add 1/2 cup chopped walnuts\n8. Add 1 tablespoon ground cinnamon'),
  ('San Francisco Pork Chops', 'Tender chops in a delicious sauce are great over noodles or thin spaghetti.\n\n1. Add 1 tablespoon vegetable oil\n2. Add 4 (3/4 inch-thick) boneless pork chops, trimmed\n3. Add 1 clove garlic, minced\n4. Add 1/4 cup beef broth\n5. Add 1/4 cup soy sauce\n6. Add 2 tablespoons brown sugar\n7. Add 2 teaspoons vegetable oil\n8. Add 1/4 teaspoon red pepper flakes\n9. Add 2 teaspoons cornstarch\n10. Add 2 tablespoons water'),
  ('Jenny''s Black Forest Cake', 'See how to make a classic dark chocolate and cherry cake.\n\n1. Add 1 cup milk\n2. Add 1 tablespoon vinegar\n3. Add 1 3/4 cups all-purpose flour\n4. Add 2 cups white sugar\n5. Add 3/4 cup unsweetened cocoa powder\n6. Add 1 teaspoon baking powder\n7. Add 2 teaspoons baking soda\n8. Add 1/2 teaspoon salt\n9. Add 2 eggs\n10. Add 1/2 cup vegetable oil\n11. Add 1 cup strong brewed coffee, cold\n12. Add 1 teaspoon vanilla extract\n13. Add  \n14. Add 1 (21 ounce) can cherry pie filling\n15. Add 1/2 cup cherry liqueur'),
  ('Black Bean Burger', 'My husband and I celebrated our wedding anniversary yesterday, and I''d say as marriages go, ours is pretty darn good. We have...\n\n1. Add 2 cans (14.5 Each) Seasoned Black Beans\n2. Add 1 cup Seasoned Breadcrumbs\n3. Add 1/4 cup Grated White Onion\n4. Add 1 whole Egg\n5. Add 1/2 teaspoon Chili Powder\n6. Add Salt And Pepper\n7. Add Hot Sauce (I Used Choloula)\n8. Add 8 slices Swiss Cheese\n9. Add Olive Oil, For Frying\n10. Add Butter, For Frying And Grilling\n11. Add 4 whole Kaiser Rolls Or Good Hamburger Buns\n12. Add Mayonnaise\n13. Add Lettuce Or Other Greens\n14. Add Sliced Tomato'),
  ('Scalloped Sweet Potatoes and Butternut Squash', 'I made this up to go with some grilled salmon and boy, it sure turned out a lot better than I expected! A nice twist on the old scalloped potatoes.\n\n1. Add 2 sweet potatoes, quartered lengthwise\n2. Add 1 butternut squash, quartered and seeded\n3. Add 2 tablespoons olive oil, or as needed\n4. Add 3 tablespoons butter\n5. Add 1/2 yellow onion, chopped\n6. Add 2 tablespoons all-purpose flour\n7. Add 2 cups milk\n8. Add 1 1/2 teaspoons minced fresh sage, or more to taste\n9. Add 1 pinch garlic salt, or to taste\n10. Add ground black pepper to taste\n11. Add 1/4 cup grated Asiago cheese'),
  ('Amazing Almond Chicken Casserole', 'Amazingly Wonderful Almond Chicken Casserole! My grandmother made this for me, and I could not believe how wonderful it was. It is very rich and filling. It would be great for potlucks, or family reunions.\n\n1. Add 1 (10.5 ounce) can condensed cream of chicken soup\n2. Add 1 (10.5 ounce) can chicken broth\n3. Add 4 cups cooked diced chicken\n4. Add 2 cups water chestnuts, drained  (optional)\n5. Add 2 teaspoons lemon juice\n6. Add 1 1/2 cups mayonnaise\n7. Add 2 cups chopped celery\n8. Add 1 small onion, chopped\n9. Add 2 teaspoons salt\n10. Add 2 cups cooked rice\n11. Add 1/2 cup butter\n12. Add 1 1/2 cups crushed buttery round crackers\n13. Add 1 cup sliced almonds\n14. Add 1 cup shredded Colby cheese'),
  ('Delightful Carrot Cake', 'As a youngster I can remember waiting for grandmother to pull this cake out of the oven. Boy did it ever smell as good as it tastes. Enjoy!!\n\n1. Add 4 eggs\n2. Add 2 cups white sugar\n3. Add 3 (4 ounce) jars carrot baby food\n4. Add 1 teaspoon vanilla extract\n5. Add 1 1/2 cups vegetable oil\n6. Add 2 cups all-purpose flour\n7. Add 2 teaspoons baking soda\n8. Add 1 teaspoon ground cinnamon\n9. Add 1 teaspoon salt\n10. Add 1 (8 ounce) can crushed pineapple, drained\n11. Add 1 cup chopped walnuts\n12. Add 1 cup raisins'),
  ('Dipping Sauce', 'Dipping sauce for a fried onion.\n\n1. Add 1/2 cup mayonnaise\n2. Add 2 teaspoons ketchup\n3. Add 2 tablespoons prepared horseradish\n4. Add 1/4 teaspoon paprika\n5. Add 1/4 teaspoon salt\n6. Add 1/8 teaspoon dried oregano\n7. Add 1 dash ground black pepper\n8. Add cayenne pepper to taste'),
  ('Pumpkin Whoopie Pies', 'I just hosted the The Pampered Chef''s first-ever live cooking show yesterday  - click on video below to watch the show.= The recipe for the Pumpkin Whoopie Pies is below - but I''m warning you...\n\n1. Add For the cookies:\n2. Add 3 cups (750 mL) all-purpose flour\n3. Add 1 tbsp (15 mL) Pampered Chef Cinnamon Plus Spice Blend (or 2 teaspoons ground cinnamon + 1 teaspoon ground nutmeg)\n4. Add 1 tsp (5 mL) baking powder\n5. Add 1 tsp (5 mL) baking soda\n6. Add 1 tsp (5 mL) salt\n7. Add 1 cup (250 mL) butter (2 sticks), softened\n8. Add 2 cups (500 mL) packed brown sugar\n9. Add 1 can (15 oz) solid pack pumpkin puree (not pumpkin pie filling) (1¾ cups/425 mL)\n10. Add 2 eggs\n11. Add 1/2 tsp (2 mL) vanilla extract\n12. Add 1/2 cup (125 mL) toasted walnuts, coarsely chopped, divided\n13. Add for the filling:\n14. Add 3/4 cup (175 mL) butter (11/2 sticks), softened\n15. Add 2 oz (60 g) cream cheese, softened\n16. Add 1 cup (250 mL) powdered sugar\n17. Add 1 jar (7.5 oz/213 g) marshmallow creme'),
  ('Pastry-Wrapped Lamb Rack', 'Nicely seasoned morel and oyster mushrooms flavor this lamb rack wrapped in puff pastry, it pairs well with a great summer day!\n\n1. Add 1 tablespoon olive oil\n2. Add 1 small shallot, minced\n3. Add 1/2 cup fresh morel mushrooms, sliced\n4. Add 1/2 cup fresh oyster mushrooms, stemmed and sliced\n5. Add 2 tablespoons dry white wine\n6. Add 1 teaspoon ground cumin\n7. Add 1 teaspoon paprika\n8. Add 1 teaspoon dried oregano\n9. Add 2 teaspoons brown sugar\n10. Add 1 teaspoon garlic powder\n11. Add 1 teaspoon dried parsley flakes\n12. Add 2 teaspoons ground black pepper\n13. Add 2 teaspoons kosher salt\n14. Add 1 rack of lamb, trimmed and frenched\n15. Add 1 sheet frozen puff pastry, thawed\n16. Add 2 egg yolk, beaten\n17. Add 3/4 cup demi-glace\n18. Add 2 tablespoons butter\n19. Add 2 tablespoons chopped fresh parsley'),
  ('Chocolate Italian Cream Soda', 'An easy recipe for Chocolate Italian Cream Soda.\n\n1. Add Ice\n2. Add ½ cup club soda\n3. Add 3 tablespoons Torani chocolate syrup (or flavor of your choice)\n4. Add 2 tablespoons half-and-half\n5. Add Whipped cream for topping (optional)'),
  ('Yummy Cilantro-Jalapeno Hummus', 'If you love cilantro, you will love this hummus! I usually adjust the cilantro and lemon juice for flavor after mixing. Be sure to wear gloves while preparing the jalapeno; the oil will stay on your skin for a long time and will burn your eyes if you wear contacts. (I found out the hard way!) The hummus can be made up to 3 days ahead and refrigerated. Return to room temperature before serving with crackers or pita bread.\n\n1. Add 1 (15 ounce) can garbanzo beans, drained\n2. Add 3/4 cup chopped cilantro\n3. Add 3 tablespoons lemon juice\n4. Add 1 1/2 tablespoons tahini\n5. Add 1/4 jalapeno pepper, seeded and chopped\n6. Add 1 clove garlic, minced\n7. Add 1/2 teaspoon cumin\n8. Add 1/4 teaspoon salt'),
  ('Tropical Carrot-Apple Juice', 'This recipe can be changed to what you like. Add more apples, lower the amount of carrots; what have you.\n\n1. Add 1 large apple, quartered\n2. Add 1/2 (15 ounce) can pineapple chunks\n3. Add 3 large carrots, ends trimmed\n4. Add 2 teaspoons fresh ginger\n5. Add 2 large stalks celery\n6. Add 1/2 medium beet\n7. Add white sugar  (optional)'),
  ('Eggplant and Goat Cheese Lasagna', 'This lasagna is a take on the traditional. Instead of noodles, it uses sliced eggplant. Instead of ricotta, it uses goat cheese. It is delicious!!!\n\n1. Add cooking spray\n2. Add 1 large eggplant, sliced into 1/4 inch rounds\n3. Add 1 (28 ounce) jar garden vegetable pasta sauce\n4. Add 1 (11 ounce) log goat cheese, sliced'),
  ('Smokey Parmesan Sweet Potato Chips', 'After trying several potato chip recipes, this one is a collage of the most successful recipes I have tried. The recipe could easily be modified with additions of other spices to suit any taste or any meal. These are great with burgers and are much healthier than traditional chips!\n\n1. Add 1 large sweet potato\n2. Add 1 tablespoon olive oil\n3. Add 1/4 cup shaved Parmesan cheese\n4. Add 1 1/2 teaspoons kosher salt\n5. Add 1 teaspoon ground black pepper\n6. Add 1 teaspoon smoked paprika\n7. Add 1/2 teaspoon garlic powder'),
  ('Chutney recipe', 'Lotte Duncan, TV presenter and cook, creates a seasonal chutney\n\n1. Add 50 Butter\n2. Add g Pears, peeled, cored and diced\n3. Add 450 Seedless raisins\n4. Add g Mixed spice\n5. Add 450 Balsamic vinegar\n6. Add g Medium red onion, chopped\n7. Add 1 Cider vinegar\n8. Add tsp Dark brown sugar\n9. Add 2 Cranberries\n10. Add tbsp Grated zest and juice of large orange\n11. Add 1 Port\n12. Add 1 Pinch of freshly ground black pepper\n13. Add tbsp Pinch of salt'),
  ('Michel Roux Jr''s duck confit recipe', 'Duck confit is incredibly easy to make and so versatile when homemade and served on a bed of garlicky potatoes. It cannot fail to impress.\n\n1. Add 8 duck legs\n2. Add 500 good-quality coarse sea salt\n3. Add g duck fat\n4. Add 1.5 sage leaves\n5. Add kg sprig of thyme'),
  ('White Wine Vinaigrette', 'This vinaigrette is nice and tangy but not overpowering. Perfect with a simple green salad. Can be refrigerated for up to 2 weeks.\n\n1. Add 1/3 cup vegetable oil\n2. Add 1/3 cup white wine vinegar\n3. Add 2 cloves garlic, minced\n4. Add 1 tablespoon white sugar\n5. Add 1/2 teaspoon salt\n6. Add 1 pinch ground black pepper'),
  ('Yummy Peanut Butter Cookies', 'My mother used to make these cookies when my brothers and I were growing up. They are easy and are very delicious. Hope someone out there likes them as well.\n\n1. Add 1 cup margarine\n2. Add 1 cup peanut butter\n3. Add 1 cup white sugar\n4. Add 1 cup brown sugar\n5. Add 2 eggs\n6. Add 1 teaspoon vanilla extract\n7. Add 1/2 teaspoon almond extract\n8. Add 2 1/2 cups all-purpose flour\n9. Add 1 1/2 teaspoons baking soda\n10. Add 1/2 teaspoon salt'),
  ('Authentic Tabbouleh', 'This tabbouleh is as authentic as you can get! It''s a compilation of recipes I''ve taken from my mother, mother-in-law, grandmother, and various cookbooks. This can be served on romaine lettuce leaves for garnish. Also, I''ve noticed that this recipe tastes even better the next day, so don''t hesitate to make it the day before your guests arrive.\n\n1. Add 1/2 cup fine bulgur\n2. Add 6 ripe tomatoes, finely chopped\n3. Add 1/2 onion, minced\n4. Add 5 bunches Italian parsley, minced\n5. Add 1/2 bunch fresh mint leaves, minced\n6. Add 1 bunch green onions, minced\n7. Add Dressing:\n8. Add 2 tablespoons tomato paste\n9. Add 1/2 cup vegetable oil\n10. Add 3/4 cup freshly squeezed lemon juice\n11. Add salt and ground black pepper to taste\n12. Add cayenne pepper, or to taste'),
  ('Old Fashioned Caramel Pie', 'This rich caramel custard pie is a classic favorite. The secret is to make the caramel in a cast iron skillet! Serve it with lightly sweetened whipped cream if you like.\n\n1. Add 1 (9 inch) pie shell, baked\n2. Add 1 cup white sugar\n3. Add 1/3 cup all-purpose flour\n4. Add 1/8 teaspoon salt\n5. Add 2 cups milk\n6. Add 4 egg yolks, beaten\n7. Add 1 cup white sugar'),
  ('Grandma''s Cracker Dressing', 'This dish is a holiday tradition in our family that dates back several generations.  I think it''s origins are from the Pennsylvania Dutch country.  It is quick, easy and a definite compliment to the holiday table.\n\n1. Add 8 ounces saltine crackers\n2. Add 1 cup chopped celery\n3. Add 1/2 cup chopped onion\n4. Add 2 hard-cooked eggs, chopped\n5. Add 1/4 cup chopped fresh parsley\n6. Add 1 teaspoon fresh ground black pepper\n7. Add 1/4 cup half-and-half cream\n8. Add 1 tablespoon cornstarch\n9. Add 2 cups chicken broth'),
  ('Napoleon of Peeky Toe Crab and Apple', 'Find the recipe for Napoleon of Peeky Toe Crab and Apple and other crab recipes at Epicurious.com\n'),
  ('Tempeh Reuben', 'A satisfying, tangy sandwich that is a cinch to make.\n\n1. Add 1 slice tempeh\n2. Add 1/4 cup sauerkraut\n3. Add 1 slice Swiss cheese\n4. Add 1 tablespoon thousand island salad dressing\n5. Add 2 slices rye bread\n6. Add 1/2 tablespoon butter'),
  ('Valentine''s Fettuccini for Two', 'Chicken and fettuccini in a creamy tomato basil sauce that is quick, easy, and impressive.  It made my husband grunt like a caveman.\n\n1. Add 4 ounces dry fettuccine pasta\n2. Add 1 tablespoon olive oil\n3. Add 2 skinless, boneless chicken breast halves\n4. Add 2 tablespoons Italian-style salad dressing\n5. Add 1 tablespoon balsamic vinegar\n6. Add 4 ounces fresh button mushrooms, quartered\n7. Add 1 (14.5 ounce) can organic fire-roasted diced tomatoes (such as Muir Glen®)\n8. Add 2 ounces cream cheese, cut into cubes\n9. Add 2 tablespoons chopped fresh basil\n10. Add 2 tablespoons freshly shredded Parmesan cheese'),
  ('Grape Chicken Salad', 'Seasoned chopped chicken breast is mixed with grapes and celery in a creamy dressing and served on toasted Parker House rolls.\n\n1. Add 6 chicken breasts\n2. Add Sister''s Seasoning Mixture (see below)\n3. Add 1 1/2 cups finely chopped celery\n4. Add 1/3 cup sweet pickle relish\n5. Add 2 hard-boiled eggs, chopped finely\n6. Add 1/2 cup mayonnaise, or to taste\n7. Add 4 tablespoons reserved chicken broth\n8. Add 1 cup green seedless grapes, halved\n9. Add 1 cup sliced almonds, toasted\n10. Add 1/2 cup grated Gruyere cheese  (optional)\n11. Add 1 (11 ounce) package Sister Schubert''s Parker House Style Rolls, sliced in half and toasted*\n12. Add  \n13. Add Sister''s Seasoning Mixture:\n14. Add 1/4 teaspoon tarragon\n15. Add 1/4 teaspoon lemon pepper\n16. Add 1/2 teaspoon salt\n17. Add 1/4 teaspoon Greek seasoning (Cavender''s brand is a favorite)\n18. Add 1/4 cup fresh lemon juice\n19. Add 2 teaspoons Worcestershire sauce'),
  ('Slow Cooked Corned Beef for Sandwiches', 'This is an excellent recipe for party sandwiches.  I always make 2 (and sometimes 3) briskets because it goes so fast. The meat should cook slowly for a minimum of 4 hours--cooking longer will just make it more tender. It sounds like a LOT of garlic, but no one has ever complained that it tasted too garlicky.  Serve with brown mustard on rye or kaiser rolls. Can also add cole slaw to the sandwich for a uniquely delicious sandwich.\n\n1. Add 2 (3 pound) corned beef briskets with spice packets\n2. Add 2 (12 fluid ounce) bottles beer\n3. Add 2 bay leaves\n4. Add 1/4 cup peppercorns\n5. Add 1 bulb garlic cloves, separated and peeled'),
  ('Crisp chicken bites', 'Summer holidays often mean kids friends are round for dinner, make sure there''s something in the freezer with these yummy bites\n\n1. Add 4 boneless chicken breast fillets\n2. Add 6 tbsp red pesto\n3. Add 3 large handfuls breadcrumbs , frsh or dried (about 300g/10oz)\n4. Add olive oil'),
  ('Les Merveilles', 'Find the recipe for Les Merveilles and other fig recipes at Epicurious.com\n'),
  ('Chickpeas with Leeks, Spinach, and Smoked Paprika', 'Recipe for Chickpeas with Leeks, Spinach, and Smoked Paprika.\n\n1. Add 1 olive oil\n2. Add 1 leek, white and light-green parts only, thinly sliced\n3. Add 1/2 kosher salt plus more for seasoning\n4. Add 1 garlic clove, finely chopped\n5. Add 1 15-oz. can chickpeas, rinsed\n6. Add 1/2 smoked paprika\n7. Add 1 bunch spinach, trimmed, thoroughly washed\n8. Add  Smoked paprika is available at most supermarkets.'),
  ('Happy Family', 'Find the recipe for Happy Family and other turnip recipes at Epicurious.com\n'),
  ('Marzipan Caramel Apples with Sesame and Almond Recipe', 'A Basic Caramel Apple is delicious as is, but it''s like a blank canvas: It can have endless mixtures of flavors layered on. Here, a caramel-coated Granny Smith...\n\n1. Add 8 slightly sour apples, such as Granny Smith, at room temperature\n2. Add 8 craft sticks or chopsticks\n3. Add 3/4 cup sliced almonds, toasted\n4. Add 3/4 cup sesame seeds, toasted\n5. Add 1 3/4 cups heavy cream\n6. Add 2 cups packed light brown sugar\n7. Add 3/4 cup dark corn syrup\n8. Add 2 tablespoons unsalted butter (1/4 stick)\n9. Add 1 teaspoon fine salt'),
  ('Smoked coley brandade', 'Mark Sargeant shares the secrets behind his version of a French classic of puréed fish, potato, garlic and cream\n\n1. Add 300g potatoes , peeled and diced\n2. Add 750ml whole milk\n3. Add 100ml double cream\n4. Add 1 bay leaf\n5. Add 1 sprig thyme\n6. Add 400g smoked coley fillet (or use smoked haddock)\n7. Add extra-virgin olive oil\n8. Add 1 garlic clove , finely sliced\n9. Add 2 egg yolks\n10. Add 1 bunch spring onion , sliced\n11. Add baguette slices fried in olive oil to serve'),
  ('Cranberry Nut Tarts', 'A great cranberry twist on traditional nut tassies. These delightful fall tarts are baked in a mini muffin pan to stunning perfection. Perfect for parties and cookie trays.\n\n1. Add 1/2 cup butter, softened\n2. Add 1 (3 ounce) package cream cheese, softened\n3. Add 1 cup all-purpose flour\n4. Add 1 egg\n5. Add 3/4 cup packed brown sugar\n6. Add 1 tablespoon butter, melted\n7. Add 1 teaspoon vanilla extract\n8. Add 3 tablespoons chopped walnuts\n9. Add 3 tablespoons chopped fresh cranberries'),
  ('Easy Corn Chowder II', 'This corn chowder is the easiest soup I have ever made - it''s quick, hearty and very tasty.\n\n1. Add 2 cups peeled and diced potatoes\n2. Add 1/2 cup diced celery\n3. Add 1/2 cup chopped red onion\n4. Add 1 (11 ounce) can creamed corn\n5. Add 1 (15 ounce) can whole kernel corn\n6. Add 1 (12 fluid ounce) can evaporated milk\n7. Add 1/8 teaspoon ground cayenne pepper\n8. Add 1/4 teaspoon salt'),
  ('Strawberry Fig Preserves', 'Everyone thinks these are strawberry preserves. No one has a clue they are made with figs! You can even use different flavors of gelatin like peach or raspberry. Since this recipe makes so little, you could skip the hot water bath and refrigerate the jars of preserves.\n\n1. Add 4 cups fresh figs, stems removed\n2. Add 3 cups white sugar\n3. Add 1 (3 ounce) package strawberry flavored Jell-O®\n4. Add 5 half-pint canning jars with lids and rings, or as needed'),
  ('Spicy Almond Chicken', 'This has just the right amount of spices. It''s tangy, beautiful and delicious.\n\n1. Add 3 tablespoons butter\n2. Add 1 (3 pound) chicken, cut into pieces\n3. Add 1 (14 ounce) jar red currant jelly\n4. Add 1/2 cup yellow mustard\n5. Add 1/2 cup blanched slivered almonds\n6. Add 3 tablespoons brown sugar\n7. Add 2 tablespoons lemon juice\n8. Add 1/2 teaspoon ground cinnamon'),
  ('Bud''s Easy Buttercream Pound Cake', 'Perfect for an Easter dessert!\n\n1. Add 4 cups all-purpose flour\n2. Add 1 (12.5 ounce) can poppyseed filling\n3. Add 2 1/2 cups confectioners'' sugar\n4. Add 2 cups butter, softened\n5. Add 6 eggs\n6. Add 3 tablespoons lemon juice\n7. Add 1 tablespoon baking powder\n8. Add 2 teaspoons grated lemon peel\n9. Add  \n10. Add 1 cup confectioners'' sugar\n11. Add 1 tablespoon milk'),
  ('Dolmas (Stuffed Grape Leaves)', 'The spices may seem like a strange combination, but this is a wonderful, delicate traditional Turkish dish with a twist.  Serve chilled, as is traditional, or warm, as desired.   Squeeze fresh lemon juice over dolmas before serving.\n\n1. Add 1 tablespoon olive oil\n2. Add 2 onions, minced\n3. Add 1 1/2 cups uncooked white rice\n4. Add 2 tablespoons tomato paste\n5. Add 2 tablespoons dried currants\n6. Add 2 tablespoons pine nuts\n7. Add 1 tablespoon ground cinnamon\n8. Add 1 tablespoon dried mint\n9. Add 1 tablespoon dried dill weed\n10. Add 1 teaspoon ground allspice\n11. Add 1 teaspoon ground cumin\n12. Add 1 (8 ounce) jar grape leaves, drained and rinsed'),
  ('Breakfast-to-Go Smoothie', 'This is a smoothie for a hearty breakfast on the go.\n\n1. Add 1 cup fat-free milk\n2. Add 1/2 cup frozen blueberries\n3. Add 1/2 cup plain fat-free Greek yogurt\n4. Add 1/4 cup old-fashioned oats\n5. Add 1 tablespoon ground flax seed'),
  ('Tabu Cocktail', 'This is the signature drink in the Tabu Ultra Lounge. It is a variation of a classic cocktail called a Strawberry Fizz that was traditionally served in a 6-8 ounce glass filled with fine ice and topped with charged water. The Tabu Cocktail is a great introduction to gin for the non-gin drinker and a must for those that enjoy a gin based cocktail.\n\n1. Add 1 1/2 fluid ounces Tanqueray #10 Gin\n2. Add 2 ounces pureed fresh strawberries\n3. Add 1 heaping bar spoon powdered sugar\n4. Add fresh raspberries'),
  ('Smothered Filet Mignon', 'A great combination of flavors. Serve with some mashed garlic red potatoes and sweetened green beans for a fabulous special occasion meal. Don''t forget to serve a bottle of Cabernet or Zinfandel.\n\n1. Add 4 (6 ounce) filet mignon steaks\n2. Add seasoned salt to taste\n3. Add cracked black pepper to taste\n4. Add 1/4 cup extra virgin olive oil\n5. Add 1/4 cup balsamic vinegar\n6. Add 1 tablespoon Dijon mustard\n7. Add 2 teaspoons dried rosemary\n8. Add 1 tablespoon butter\n9. Add 2 cups onion slices\n10. Add 1 teaspoon white sugar\n11. Add 4 ounces blue cheese, crumbled'),
  ('Minted Marinated Zucchini', 'For those who have mint leaves and zucchini taking over the vegetable patch, this is simple. This tangy dish can be used as a relish inside panini or sandwiches, or on the side.\n\n1. Add 1/4 cup olive oil\n2. Add 3 large zucchini, thinly sliced\n3. Add 2 cloves garlic, minced\n4. Add 2 cups fresh mint leaves, finely chopped\n5. Add 1/3 cup distilled white vinegar\n6. Add 1/2 teaspoon salt\n7. Add ground black pepper to taste\n8. Add 1 tablespoon olive oil, for drizzling');

INSERT INTO
  ingredients
  (title, type, image)
VALUES
  ('butter', 'other', 'butter.jpg'),
  ('baking powder', 'other', 'baking_powder.jpg'),
  ('egg', 'other', 'egg.jpg'),
  ('brown sugar', 'other', 'brown.jpg'),
  ('vanilla', 'other', 'vanilla.jpg'),
  ('water', 'other', 'water.jpg'),
  ('corn syrup', 'other', 'corn.jpg'),
  ('yeast', 'other', 'yeast.jpg'),
  ('pasta', 'other', 'pasta.jpg'),
  ('olive oil', 'other', 'olive.jpg'),
  ('garlic', 'other', 'garlic.jpg'),
  ('asparagus', 'vegetable', 'asparagus.jpg'),
  ('broth', 'other', 'broth.jpg'),
  ('dill', 'other', 'dill.jpg'),
  ('lime', 'fruit', 'lime.jpg'),
  ('garlic powder', 'other', 'garlic.jpg'),
  ('cheese', 'other', 'cheese.jpg'),
  ('vinegar', 'other', 'vinegar.jpg'),
  ('jelly', 'other', 'jelly.jpg'),
  ('blackberry', 'fruit', 'blackberry.jpg'),
  ('celery', 'vegetable', 'celery.jpg'),
  ('milk', 'other', 'milk.jpg'),
  ('apples', 'other', 'apples.jpg'),
  ('lemon', 'fruit', 'lemon.jpg'),
  ('raisins', 'other', 'raisins.jpg'),
  ('yogurt', 'other', 'yogurt.jpg'),
  ('walnuts', 'other', 'walnuts.jpg'),
  ('cinnamon', 'other', 'cinnamon.jpg'),
  ('vegetable oil', 'other', 'vegetable.jpg'),
  ('pork', 'meat', 'pork.jpg'),
  ('soy sauce', 'other', 'soy.jpg'),
  ('red pepper flakes', 'other', 'red.jpg'),
  ('cornstarch', 'other', 'corn.jpg'),
  ('cocoa powder', 'other', 'cocoa.jpg'),
  ('baking soda', 'other', 'baking.jpg'),
  ('coffee', 'other', 'coffee.jpg'),
  ('cherry liqueur', 'other', 'cherry.jpg'),
  ('black beans', 'vegetable', 'black.jpg'),
  ('breadcrumbs', 'other', 'breadcrumbs.jpg'),
  ('chili powder', 'other', 'chili.jpg'),
  ('hot sauce', 'other', 'hot.jpg'),
  ('bread', 'other', 'bread.jpg'),
  ('mayonnaise', 'other', 'mayonnaise.jpg'),
  ('lettuce', 'vegetable', 'lettuce.jpg'),
  ('sweet potato', 'vegetable', 'sweet.jpg'),
  ('squash', 'vegetable', 'squash.jpg'),
  ('sage', 'other', 'sage.jpg'),
  ('garlic salt', 'other', 'garlic.jpg'),
  ('water chestnuts', 'vegetable', 'water.jpg'),
  ('rice', 'other', 'rice.jpg'),
  ('crackers', 'other', 'crackers.jpg'),
  ('almonds', 'other', 'almonds.jpg'),
  ('ketchup', 'other', 'ketchup.jpg'),
  ('horseradish', 'other', 'horseradish.jpg'),
  ('paprika', 'other', 'paprika.jpg'),
  ('oregano', 'other', 'oregano.jpg'),
  ('cayenne pepper', 'other', 'chili.jpg'),
  ('powdered sugar', 'other', 'powdered.jpg'),
  ('marshmallow creme', 'other', 'marshmallow.jpg'),
  ('shallot', 'vegetable', 'shallot.jpg'),
  ('mushroom', 'vegetable', 'mushroom.jpg'),
  ('wine', 'other', 'wine.jpg'),
  ('cumin', 'other', 'cumin.jpg'),
  ('parsley', 'other', 'parsley.jpg'),
  ('lamb', 'meat', 'lamb.jpg'),
  ('club soda', 'other', 'club.jpg'),
  ('garbanzo beans', 'other', 'garbanzo.jpg'),
  ('cilantro', 'other', 'cilantro.jpg'),
  ('tahini', 'other', 'tahini.jpg'),
  ('jalapeno pepper', 'vegetable', 'jalapeno.jpg'),
  ('beet', 'vegetable', 'beet.jpg'),
  ('pear', 'fruit', 'pear.jpg'),
  ('cranberries', 'fruit', 'cranberries.jpg'),
  ('duck', 'meat', 'duck.jpg'),
  ('thyme', 'other', 'thyme.jpg'),
  ('peanut butter', 'other', 'peanut.jpg'),
  ('almond extract', 'other', 'almonds.jpg'),
  ('bulgur', 'other', 'bulgur.jpg'),
  ('mint', 'other', 'mint.jpg'),
  ('green onion', 'other', 'green.jpg'),
  ('tempeh', 'other', 'tempeh.jpg'),
  ('sauerkraut', 'vegetable', 'sauerkraut.jpg'),
  ('thousand island salad dressing', 'other', 'sauerkraut.jpg'),
  ('sweet pickle relish', 'vegetable', 'sweet.jpg'),
  ('tarragon', 'other', 'tarragon.jpg'),
  ('lemon pepper', 'other', 'lemon.jpg'),
  ('Worcestershire sauce', 'other', 'soy.jpg'),
  ('bay leaves', 'other', 'bay.jpg'),
  ('leek', 'vegetable', 'leek.jpg'),
  ('sesame seeds, toasted', 'other', 'sesame.jpg'),
  ('mustard', 'other', 'mustard.jpg'),
  ('pine nuts', 'other', 'pine.jpg'),
  ('flax seed', 'other', 'flax.jpg'),
  ('gin', 'other', 'club.jpg'),
  ('rosemary', 'other', 'rosemary.jpg'),
  ('zucchini', 'vegetable', 'zucchini.jpg'),
  ( 'avocado', 'vegetable', 'avocado.jpg' ),
  ( 'banana', 'fruit', 'banana.jpg' ),
  ( 'beef', 'meat', 'beef.jpg' ),
  ( 'black_pepper', 'other', 'black_pepper.jpg' ),
  ( 'blueberry', 'fruit', 'blueberry.jpg' ),
  ( 'broccoli', 'vegetable', 'broccoli.jpg' ),
  ( 'carrot', 'vegetable', 'carrot.jpg' ),
  ( 'cauliflower', 'vegetable', 'cauliflower.jpg' ),
  ( 'cherry', 'fruit', 'cherry.jpg' ),
  ( 'chicken', 'meat', 'chicken.jpg' ),
  ( 'corn', 'vegetable', 'corn.jpg' ),
  ( 'cucumber', 'vegetable', 'cucumber.jpg' ),
  ( 'eggplant', 'vegetable', 'eggplant.jpg' ),
  ( 'fish', 'meat', 'fish.jpg' ),
  ( 'flour', 'other', 'flour.jpg' ),
  ( 'ginger', 'other', 'ginger.jpg' ),
  ( 'green_bean', 'vegetable', 'green_bean.jpg' ),
  ( 'onion', 'vegetable', 'onion.jpg' ),
  ( 'orange', 'fruit', 'orange.jpg' ),
  ( 'pineapple', 'fruit', 'pineapple.jpg' ),
  ( 'potato', 'vegetable', 'potato.jpg' ),
  ( 'pumpkin', 'vegetable', 'pumpkin.jpg' ),
  ( 'raspberry', 'fruit', 'raspberry.jpg' ),
  ( 'red_pepper', 'vegetable', 'red_pepper.jpg' ),
  ( 'salt', 'other', 'salt.jpg' ),
  ( 'spinach', 'vegetable', 'spinach.jpg' ),
  ( 'strawberry', 'fruit', 'strawberry.jpg' ),
  ( 'sugar', 'other', 'sugar.jpg' ),
  ( 'tomato', 'vegetable', 'tomato.jpg' ),
  ( 'watermelon', 'fruit', 'watermelon.jpg' );

  INSERT INTO recipes_photos
  (recipe_id, url)
VALUES
  (1, 'cookies1.jpg'),
  (1, 'cookies2.jpg'),
  (1, 'cookies3.jpg'),
  (1, 'cookies4.jpg'),
  (1, 'cookies5.jpg'),
  (2, 'empanada1.jpg'),
  (2, 'empanada2.jpg'),
  (3, 'jollof1.jpg'),
  (4, 'shakshuka1.jpg'),
  (4, 'shakshuka2.jpg'),
  (4, 'shakshuka3.jpg'),
  (5, 'khachapuri1.jpg'),
  (5, 'khachapuri2.jpg'),
  -- 6 --
  -- 7 --
  -- 8 --
  (9, 'AsparagusAngelHairPasta.jpg'),
  -- 10 --
  (11, 'CreamofBroccoliSoupIII.jpg'),
  -- 12 --
  (12, 'CarrotRaisinSaladBunnySalad.jpg'),
  (13, 'SanFranciscoPorkChops.jpg'),
  (14, 'JennysBlackForestCake.jpg'),
  (15, 'ScallopedSweetPotatoesandButternutSquash.jpg'),
  (16, 'AmazingAlmondChickenCasserole.jpg'),
  (17, 'DelightfulCarrotCake.jpg'),
  (18, 'DippingSauce.jpg'),
  (19, 'PumpkinWhoopiePies.jpg'),
  -- 20 --
  (21, 'ChocolateItalianCreamSoda.jpg'),
  (22, 'YummyCilantroJalapenoHummus.jpg'),
  (23, 'TropicalCarrotAppleJuice.jpg'),
  (24, 'EggplantandGoatCheeseLasagna'),
  -- 25 --
  -- 26 --
  -- 27 --
  (28, 'WhiteWineVinaigrette.jpg'),
  (29, 'YummyPeanutButterCookies.jpg'),
  (30, 'OldFashionedCaramelPie.jpg'),
  (31, 'GrandmasCrackerDressing.jpg'),
  -- 32 --
  (33, 'TempehReuben.jpg'),
  (34, 'ValentinesFettucciniforTwo.jpg'),
  (35, 'GrapeChickenSalad.jpg'),
  (36, 'SlowCookedCornedBeefforSandwiches.jpg'),
  -- 37 --
  -- 38 --
  -- 39 --
  -- 40 --
  -- 41 --
  -- 42 --
  (43, 'CranberryNutTarts.jpg'),
  (44, 'EasyCornChowderII.jpg'),
  (45, 'SpicyAlmondChicken.jpg'),
  (46, 'BudsEasyButtercreamPoundCake.jpg'),
  (47, 'DolmasStuffedGrapeLeaves.jpg'),
  (48, 'BreakfasttoGoSmoothie.jpg'),
  (49, 'TabuCocktail.jpg'),
  (50, 'SmotheredFiletMignon.jpg'),
  (51, 'MintedMarinatedZucchini.jpg');

INSERT INTO recipe_ingredients
(recipe_id, ingredient_id)
VALUES
(1,1),
(1,3),
(1,4),
(1,22),
(1,124),
(2,30),
(2,61),
(2,125),
(3,121),
(3,50),
(3,114),
(4,125),
(4,3),
(4,17),
(5,42),
(5,3),
(5,17),
(6,114),
(6,30),
(7,1),
(7,3),
(7,4),
(7,22),
(7,124),
(8,42),
(9,20),
(10,13),
(10,121),
(11,102),
(11,13),
(12,85),
(12,24),
(12,110),
(13,110),
(13,9),
(13,17),
(14,103),
(14,25),
(15,30),
(16,34),
(16,105),
(16,3),
(16,111),
(16,35),
(16,2),
(17,38),
(17,42),
(18,45),
(18,46),
(19,52),
(19,106),
(20,103),
(20,124),
(20,25),
(21,18),
(21,43),
(22,118),
(22,59),
(23,65),
(23,79),
(24,34),
(24,66),
(25,68),
(25,70),
(25,67),
(26,23),
(26,103),
(27,109),
(27,17),
(28,17),
(28,45),
(29,6),
(29,26),
(29,125),
(30,74),
(31,6),
(31,62),
(31,18),
(32,76),
(32,124),
(32,111),
(32,3),
(33,78),
(33,79),
(33,104),
(33,64),
(34,22),
(34,124),
(34,59),
(34,37),
(35,39),
(35,18),
(36,23),
(37,81),
(37,42),
(37,82),
(37,83),
(38,75),
(38,95),
(38,60),
(38,9),
(39,106),
(39,120),
(39,18),
(40,99),
(40,54),
(40,91),
(41,29),
(41,87),
(42,58),
(42,72),
(42,119),
(42,4),
(43,67),
(43,89),
(43,122),
(43,55),
(44,32),
(44,90),
(44,60),
(44,49),
(45,77),
(45,23),
(45,33),
(45,52),
(45,90),
(46,10),
(46,110),
(47,73),
(47,27),
(47,124),
(48,15),
(48,107),
(48,21),
(48,57),
(49,123),
(49,19),
(50,41),
(50,32),
(50,100),
(51,2),
(51,35),
(51,8),
(51,22),
(51,1),
(52,107),
(52,57),
(52,80),
(52,56),
(52,114),
(52,47),
(53,93),
(53,105),
(53,101),
(53,98),
(53,97),
(53,126),
(54,36),
(54,37),
(54,94),
(55,113),
(55,62),
(55,87),
(55,86),
(55,63),
(56,96),
(56,60),
(56,95),
(56,92),
(56,64);
