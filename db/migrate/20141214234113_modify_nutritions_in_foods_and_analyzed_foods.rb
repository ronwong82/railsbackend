class ModifyNutritionsInFoodsAndAnalyzedFoods < ActiveRecord::Migration
  def change
    remove_column :foods, :vitamin_b
    remove_column :analyzed_foods, :vitamin_b
    rename_column :foods, :cholesteral, :cholesterol
    rename_column :analyzed_foods, :cholesteral, :cholesterol
  end
end
