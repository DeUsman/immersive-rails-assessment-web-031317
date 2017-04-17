class AddNewRatingToGuestAppearances < ActiveRecord::Migration[5.0]
  def change
    add_column :guest_appearances, :rating, :integer
  end
end
