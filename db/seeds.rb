User.create!([
  {email: "whwbaird@gmail.com", password_digest: "$2a$12$Vb6WOLtqkPRMfJCxDfJ.xeVCfdj.AoklbIWsnYWCBtZ.O2TQAzcdK"}
])
Citrus.create!([
  {name: "Lemon juice"},
  {name: "Lime juice"},
  {name: "Orange juice"},
  {name: "Grapefruit juice"},
  {name: "Blood orange juice"}
])
Liquor.create!([
  {name: "Brandy"},
  {name: "Gin"},
  {name: "Light Rum"},
  {name: "Dark Rum"},
  {name: "Tequila"},
  {name: "Mezcal"},
  {name: "Vodka"},
  {name: "Rye Whiskey"},
  {name: "Bourbon"},
  {name: "Scotch"},
  {name: "Cognac"}
])
Cocktail.create!([
  {format_id: 4, name: "Old Fashioned", liquor_id: 8, sweetener_id: 1, bitters_id: 1, citrus_id: nil, soda_id: nil, modifier_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Whiskey_Old_Fashioned1.jpg/800px-Whiskey_Old_Fashioned1.jpg"},
  {format_id: 1, name: "Negroni", liquor_id: 2, sweetener_id: nil, bitters_id: 5, citrus_id: nil, soda_id: nil, modifier_id: 1, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Negroni_served_in_Vancouver_BC.jpg/330px-Negroni_served_in_Vancouver_BC.jpg"},
  {format_id: 1, name: "Manhattan", liquor_id: 8, sweetener_id: nil, bitters_id: 1, citrus_id: nil, soda_id: nil, modifier_id: 1, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/A_Manhattan.jpg/255px-A_Manhattan.jpg"},
  {format_id: 5, name: "Margarita", liquor_id: 5, sweetener_id: nil, bitters_id: nil, citrus_id: 2, soda_id: nil, modifier_id: 7, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/MargaritaReal.jpg/330px-MargaritaReal.jpg"},
  {format_id: 3, name: "Martini", liquor_id: 7, sweetener_id: nil, bitters_id: nil, citrus_id: nil, soda_id: nil, modifier_id: 2, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/15-09-26-RalfR-WLC-0084.jpg/330px-15-09-26-RalfR-WLC-0084.jpg"},
  {format_id: 6, name: "Whiskey Sour", liquor_id: 9, sweetener_id: 1, bitters_id: nil, citrus_id: 2, soda_id: nil, modifier_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Whiskey_Sour.jpg/330px-Whiskey_Sour.jpg"},
  {format_id: 2, name: "Tom Collins", liquor_id: 2, sweetener_id: nil, bitters_id: nil, citrus_id: 1, soda_id: 1, modifier_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/aa/Tom_Collins.jpg/330px-Tom_Collins.jpg"},
  {format_id: 2, name: "Rum and Coke", liquor_id: 4, sweetener_id: nil, bitters_id: nil, citrus_id: 2, soda_id: 3, modifier_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/15-09-26-RalfR-WLC-0056.jpg/338px-15-09-26-RalfR-WLC-0056.jpg"},
  {format_id: 2, name: "Moscow Mule", liquor_id: 7, sweetener_id: nil, bitters_id: nil, citrus_id: 2, soda_id: 4, modifier_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Moscow_Mule_at_Rye%2C_San_Francisco.jpg/330px-Moscow_Mule_at_Rye%2C_San_Francisco.jpg"},
  {format_id: 2, name: "Gin and Tonic", liquor_id: 2, sweetener_id: nil, bitters_id: nil, citrus_id: 2, soda_id: 2, modifier_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Gin_and_Tonic_with_ingredients.jpg/330px-Gin_and_Tonic_with_ingredients.jpg"},
  {format_id: 1, name: "Boulevardier", liquor_id: 9, sweetener_id: nil, bitters_id: 5, citrus_id: nil, soda_id: nil, modifier_id: 1, image: "https://upload.wikimedia.org/wikipedia/commons/b/b6/Society_Lounge_-_Boulevardier_-_16164913902.jpg"},
  {format_id: 2, name: "Dark and Stormy", liquor_id: 4, sweetener_id: nil, bitters_id: nil, citrus_id: 2, soda_id: 4, modifier_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/DarknStormy.jpg/330px-DarknStormy.jpg"},
  {format_id: 1, name: "Sazerac", liquor_id: 11, sweetener_id: nil, bitters_id: 1, citrus_id: nil, soda_id: nil, modifier_id: 9, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/dd/SazeracRooseveltNOLA1July2009.JPG/330px-SazeracRooseveltNOLA1July2009.JPG"},
  {format_id: 6, name: "Daiquiri", liquor_id: 3, sweetener_id: 1, bitters_id: nil, citrus_id: 2, soda_id: nil, modifier_id: nil, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Classic_Daiquiri_in_Cocktail_Glass.jpg/330px-Classic_Daiquiri_in_Cocktail_Glass.jpg"},
  {format_id: 5, name: "Blood and Sand", liquor_id: 10, sweetener_id: nil, bitters_id: nil, citrus_id: 5, soda_id: nil, modifier_id: 10, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/VTR_-_Blood_and_Sand.jpg/800px-VTR_-_Blood_and_Sand.jpg"},
  {format_id: 5, name: "Sidecar", liquor_id: 2, sweetener_id: nil, bitters_id: nil, citrus_id: 1, soda_id: nil, modifier_id: 7, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/94/Sidecar-cocktail.jpg/330px-Sidecar-cocktail.jpg"}
])
Modifier.create!([
  {name: "Sweet vermouth"},
  {name: "Dry vermouth"},
  {name: "Maraschino liqueur"},
  {name: "Amaretto"},
  {name: "Campari"},
  {name: "Aperol"},
  {name: "Orange liqueur"},
  {name: "Kahlua"},
  {name: "Absinthe"},
  {name: "Cherry liqueur"}
])
SavedCocktail.create!([
  {user_id: 1, format_id: 2, name: "Dark and Stormy", liquor_id: 4, sweetener_id: nil, bitters_id: nil, citrus_id: 2, soda_id: 4, modifier_id: nil, image: nil, notes: nil},
  {user_id: 2, format_id: 2, name: "Gin and Tonic", liquor_id: 2, sweetener_id: nil, bitters_id: nil, citrus_id: 2, soda_id: 2, modifier_id: nil, image: nil, notes: nil},
  {user_id: 2, format_id: 2, name: "Havana Mule", liquor_id: 4, sweetener_id: nil, bitters_id: nil, citrus_id: 4, soda_id: 4, modifier_id: nil, image: nil, notes: nil},
  {user_id: 2, format_id: 4, name: "RoboMix Cocktail #1415", liquor_id: 8, sweetener_id: 3, bitters_id: 4, citrus_id: nil, soda_id: nil, modifier_id: nil, image: nil, notes: nil},
  {user_id: 2, format_id: 1, name: "Boulevardier", liquor_id: 9, sweetener_id: nil, bitters_id: 5, citrus_id: nil, soda_id: nil, modifier_id: 1, image: nil, notes: nil},
  {user_id: 2, format_id: 2, name: "Cola War", liquor_id: 2, sweetener_id: nil, bitters_id: nil, citrus_id: 5, soda_id: 3, modifier_id: nil, image: nil, notes: nil},
  {user_id: 2, format_id: 3, name: "Jolly Roger", liquor_id: 4, sweetener_id: nil, bitters_id: nil, citrus_id: nil, soda_id: nil, modifier_id: 1, image: nil, notes: nil},
  {user_id: 2, format_id: 6, name: "Limey Bastard", liquor_id: 2, sweetener_id: 1, bitters_id: nil, citrus_id: 2, soda_id: nil, modifier_id: nil, image: nil, notes: nil},
  {user_id: 2, format_id: 2, name: "Moscow Mule", liquor_id: 7, sweetener_id: nil, bitters_id: nil, citrus_id: 2, soda_id: 4, modifier_id: nil, image: nil, notes: nil},
  {user_id: 1, format_id: 2, name: "RoboMix Cocktail #856", liquor_id: 8, sweetener_id: nil, bitters_id: nil, citrus_id: 2, soda_id: 2, modifier_id: nil, image: nil, notes: nil},
  {user_id: 2, format_id: 5, name: "Blood and Sand", liquor_id: 10, sweetener_id: nil, bitters_id: nil, citrus_id: 5, soda_id: nil, modifier_id: 10, image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/VTR_-_Blood_and_Sand.jpg/800px-VTR_-_Blood_and_Sand.jpg", notes: nil},
  {user_id: 2, format_id: 2, name: "Bloody Mule", liquor_id: 8, sweetener_id: nil, bitters_id: nil, citrus_id: 5, soda_id: 4, modifier_id: nil, image: "image/upload/v1615917039/e0y6mnb1vgdruutnvdr5.jpg", notes: "very fun cocktail"},
  {user_id: 2, format_id: 3, name: "Amaretto Martini", liquor_id: 2, sweetener_id: nil, bitters_id: nil, citrus_id: nil, soda_id: nil, modifier_id: 4, image: "", notes: "An interesting but ultimately disgusting blend."},
  {user_id: 2, format_id: 1, name: "Boulevardier", liquor_id: 9, sweetener_id: nil, bitters_id: 5, citrus_id: nil, soda_id: nil, modifier_id: 1, image: "https://upload.wikimedia.org/wikipedia/commons/b/b6/Society_Lounge_-_Boulevardier_-_16164913902.jpg", notes: nil}
])
Sweetener.create!([
  {name: "Simple syrup"},
  {name: "Demarara syrup"},
  {name: "Grenadine"}
])
Format.create!([
  {name: "3-Part"},
  {name: "Fizz"},
  {name: "Martini"},
  {name: "Old Fashioned"},
  {name: "Sidecar"},
  {name: "Sour"}
])
Bitter.create!([
  {name: "Angostura bitters"},
  {name: "Orange bitters"},
  {name: "Mole bitters"},
  {name: "Peychaud's bitters"},
  {name: "Campari"},
  {name: "Aperol"},
  {name: "Absinthe"}
])
Soda.create!([
  {name: "Club soda"},
  {name: "Tonic water"},
  {name: "Cola"},
  {name: "Ginger beer"}
])
