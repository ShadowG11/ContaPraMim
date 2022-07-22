class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :title
      t.decimal :value
      t.string :category
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
