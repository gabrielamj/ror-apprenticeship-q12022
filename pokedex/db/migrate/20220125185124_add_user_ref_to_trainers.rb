class AddUserRefToTrainers < ActiveRecord::Migration[6.1]
  def change
    add_reference :trainers, :user, null: false, foreign_key: true
  end
end
