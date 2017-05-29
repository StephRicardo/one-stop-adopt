class AddColumnsToPet < ActiveRecord::Migration[5.1]
  def change
    add_column :pets, :name, :string
    add_column :pets, :age, :string
    add_column :pets, :sex, :string
    add_column :pets, :size, :string
    add_column :pets, :city, :string
    add_column :pets, :zip, :string
    add_column :pets, :address1, :text
    add_column :pets, :address2, :text
    add_column :pets, :phone, :string
    add_column :pets, :mix, :string
    add_column :pets, :description, :text
    add_column :pets, :email, :string
    add_column :pets, :animal, :string
  end
end
