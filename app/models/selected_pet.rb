class SelectedPet < ActiveRecord::Base
  belongs_to :user
  belongs_to :pet

  scope :favorite,  -> { where(is_liked: true) }
end
