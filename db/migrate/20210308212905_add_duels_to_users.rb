class AddDuelsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :duel, null: false, foreign_key: true
  end
end
