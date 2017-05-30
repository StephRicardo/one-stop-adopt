class AddBooleansColumnToSelectedPets < ActiveRecord::Migration[5.1]
  def change
    add_column :selected_pets, :is_liked, :boolean
  end
end
