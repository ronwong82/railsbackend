class AddServingStringToFood < ActiveRecord::Migration
  def change
    add_column :foods, :serving_string, :string
  end
end
