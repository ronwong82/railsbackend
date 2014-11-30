class AddServingStringToAnalyzedFood < ActiveRecord::Migration
  def change
    add_column :analyzed_foods, :serving_string, :string
  end
end
