ActiveAdmin.register Food do
  menu :label => "Raw Food Data", priority: 2
  config.per_page = 50

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end
  permit_params :name, :description, :category, :food_group, :barcode, :barcode_type, :brand, :calories, :calories_from_fat, :total_fat,
                :saturated_fat, :trans_fat, :polyunsaturated_fat, :omega_6, :omega_3, :protein,
                :monounsaturated_fat, :cholesterol, :sodium, :potassium, :total_carbohydrates,
                :dietary_fiber, :sugars, :vitamin_a, :vitamin_b12, :vitamin_c, :calcium, :iron, :caffeine, :serving_size,
                :serving_size_type, :location, :is_edited, :created_at, :user_ip, :user_email, :is_edited
  index do
    selectable_column
    id_column
    column :name
    column :description
    column :category
    column :food_group
    column :brand
    column :barcode
    column :barcode_type
    column :calories
    column :calories_from_fat
    column :total_fat
    column :saturated_fat
    column :trans_fat
    column :total_carbohydrates
    column :dietary_fiber
    column :sugars
    column :protein
    column :sodium
    column :potassium
    column :caffeine
    column :vitamin_a
    column :vitamin_b12
    column :vitamin_c
    column :calcium
    column :iron
    column :monounsaturated_fat
    column :polyunsaturated_fat
    column :cholesterol
    column :omega_3
    column :omega_6
    column :serving_size
    column :serving_string
    column :serving_size_type
    column :location
    column :user_ip
    column :user_email
    column :created_at
    column :updated_at
    column :is_edited
    column :is_mergeable
    actions
  end

  show do |ad|
      attributes_table do
        row :name
        row :description
        row :category
        row :food_group
        row :brand
        row :barcode
        row :barcode_type
        row :calories
        row :calories_from_fat
        row :total_fat
        row :saturated_fat
        row :trans_fat
        row :total_carbohydrates
        row :dietary_fiber
        row :sugars
        row :protein
        row :sodium
        row :potassium
        row :caffeine
        row :vitamin_a
        row :vitamin_b12
        row :vitamin_c
        row :calcium
        row :iron
        row :monounsaturated_fat
        row :polyunsaturated_fat
        row :cholesterol
        row :omega_3
        row :omega_6
        row :serving_size
        row :serving_string
        row :serving_size_type
        row :location
        row :user_ip
        row :user_email
        row :created_at
        row :updated_at
        row :is_edited
        row :is_mergeable
      end
    end

    form do |f|
      f.inputs do
        f.input :name
        f.input :description
        f.input :category
        f.input :food_group
        f.input :brand
        f.input :barcode
        f.input :barcode_type
        f.input :calories
        f.input :calories_from_fat
        f.input :total_fat
        f.input :saturated_fat
        f.input :trans_fat
        f.input :total_carbohydrates
        f.input :dietary_fiber
        f.input :sugars
        f.input :protein
        f.input :sodium
        f.input :potassium
        f.input :caffeine
        f.input :vitamin_a, label: 'Vitamin A' 
        f.input :vitamin_b12, label: 'Vitamin B12' 
        f.input :vitamin_c, label: 'Vitamin C' 
        f.input :calcium
        f.input :iron
        f.input :monounsaturated_fat
        f.input :polyunsaturated_fat
        f.input :cholesterol
        f.input :omega_3
        f.input :omega_6
        f.input :serving_size
        f.input :serving_string
        f.input :serving_size_type
        f.input :location
        f.input :user_ip
        f.input :user_email
        f.input :is_edited
      end
      f.actions
    end

    csv do
      column :id
      column :name
      column :description
      column :category
      column :food_group
      column :brand
      column :barcode
      column :barcode_type
      column :calories
      column :calories_from_fat
      column :total_fat
      column :saturated_fat
      column :trans_fat
      column :total_carbohydrates
      column :dietary_fiber
      column :sugars
      column :protein
      column :sodium
      column :potassium
      column :caffeine
      column :vitamin_a
      column :vitamin_b12
      column :vitamin_c
      column :calcium
      column :iron
      column :monounsaturated_fat
      column :polyunsaturated_fat
      column :cholesterol
      column :omega_3
      column :omega_6
      column :serving_size
      column :serving_string
      column :serving_size_type
      column :location
      column :user_ip
      column :user_email
      column :created_at
      column :updated_at
      column :is_edited
      column :is_mergeable
    end

  filter :is_edited
  filter :name
  filter :category
  filter :food_group
  filter :created_at

  batch_action :approve do |selection|
    Food.find(selection).each do |food|
      food.is_approved = true
      food.save
    end

    redirect_to :back
  end

  batch_action :disapprove do |selection|
    Food.find(selection).each do |food|
      food.is_approved = false
      food.save
    end

    redirect_to :back
  end

end
