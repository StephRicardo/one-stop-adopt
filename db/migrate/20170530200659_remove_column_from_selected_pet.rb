class RemoveColumnFromSelectedPet < ActiveRecord::Migration[5.1]
  def change
    remove_column :selected_pets, :is_liked, :boolean
  end
end
