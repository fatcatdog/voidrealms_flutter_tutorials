class pizza {
 static List<String> sizes = <String>["Small", 'Medium', 'Large'];

 String size = sizes.elementAt(0);

 Map<String, bool> toppings = new Map<String, bool>();
 Map<String, bool> meats = new Map<String, bool>();
 Map<String, bool> specials = new Map<String, bool>();

 pizza() {
   specials.putIfAbsent('Cheese', () => false);
   specials.putIfAbsent('Margarita', () => false);
   specials.putIfAbsent('Meat Lovers Delight', () => false);
   specials.putIfAbsent('Veggie Special', () => false);
   specials.putIfAbsent('I want to try build my own!', () => false);

   toppings.putIfAbsent('Onions', () => false);
   toppings.putIfAbsent('Mushrooms', () => false);
   toppings.putIfAbsent('Sardines', () => false);
   toppings.putIfAbsent('Brocoli', () => false);
   toppings.putIfAbsent('Peppers', () => false);
   toppings.putIfAbsent('Pickles', () => false);
   toppings.putIfAbsent('Eggplant', () => false);
   toppings.putIfAbsent('Olives', () => false);
   toppings.putIfAbsent('None!!!!', () => false);

 }
}

