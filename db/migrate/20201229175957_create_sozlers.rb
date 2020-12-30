class CreateSozlers < ActiveRecord::Migration[6.1]
  def change
    create_table :sozlers do |t|
      t.string :yazar
      t.string :soz

      t.timestamps
    end
  end
end
