class AddNewNutritionsToFoodsAndAnalyzedFoods < ActiveRecord::Migration
  def change
    add_column :foods, :vitamin_b12, :float
    add_column :analyzed_foods, :vitamin_b12, :float
    add_column :foods, :vitamin_c, :float
    add_column :analyzed_foods, :vitamin_c, :float
    add_column :foods, :calories_from_fat, :float
    add_column :analyzed_foods, :calories_from_fat, :float
  end
end
