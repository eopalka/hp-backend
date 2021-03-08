class CreateDuels < ActiveRecord::Migration[6.0]
  def change
    create_table :duels do |t|
      t.integer :score

      t.timestamps
    end
  end
end
