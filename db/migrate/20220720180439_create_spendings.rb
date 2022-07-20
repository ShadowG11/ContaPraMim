class CreateSpendings < ActiveRecord::Migration[7.0]
  def change
    create_table :spendings do |t|
      t.string :title
      t.decimal :value
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
