class CreateCompetitors < ActiveRecord::Migration[5.1]
  def change
    create_table :competitors do |t|
      t.string :team
      t.string :belt
      t.integer :age

      t.timestamps
    end
  end
end
