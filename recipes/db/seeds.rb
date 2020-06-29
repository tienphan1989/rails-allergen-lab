# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
=begin
recipe belongs to user
recipe has_many recipe_ingredients
recipe has_many ingredients, through recipe_ingredients

recipe_ingredients belongs_to recipe
recipe_ingredients belongs_to ingredient

ingredients has_many recipe_ingredients 
ingredients has_many recipes, through recipe_ingredients

allergen belongs_to user
allergen belongs_to ingredient

user has_many recipes
user has_many allergens

rails g model recipes name:string, user:user_id, ingredient:ingredient_id --no-test-framework
rails g model recipe_ingredients recipe:recipe_id ingredient:ingredient_id --no-test-framework
rails g model allergen user:user_id ingredient:ingredient_id --no-test-framework
rails g model ingredients name:string --no-test-framework
rails g model users name:string --no-test-framework

rails g controller Users new create edit update destroy index show --no-test-framework
rails g controller Ingredients new create edit update destroy index show --no-test-framework
rails g controller RecipeIngredients new create edit update destroy index show --no-test-framework
rails g controller Allergens new create edit update destroy index show --no-test-framework
rails g controller Recipes new create edit update destroy index show --no-test-framework
=end

User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
RecipeIngredient.destroy_all
Allergen.destroy_all

10.times {User.create(name: Faker::Name.unique.name)}

50.times {Ingredient.create(name: Faker::Food.unique.ingredient)}

20.times {Recipe.create(name: Faker::Food.unique.dish, user: User.all.sample, ingredient_id: rand(1..50))}

50.times {RecipeIngredient.create(recipe: Recipe.all.sample, ingredient: Ingredient.all.sample)} 

10.times {Allergen.create(user: User.all.sample, ingredient: Ingredient.all.sample)}                





