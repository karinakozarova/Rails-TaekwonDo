class CreateSparrings < ActiveRecord::Migration[5.1]
  def change
    create_table :sparrings do |t|
      t.integer :matchnumber
      t.timestamp :start
      t.integer :competitornumber

      t.timestamps
    end
  end
end
