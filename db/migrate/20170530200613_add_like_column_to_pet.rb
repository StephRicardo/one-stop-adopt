class AddLikeColumnToPet < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :is_liked, :boolean
  end
end
