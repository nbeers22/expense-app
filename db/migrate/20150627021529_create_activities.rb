class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :title
      t.text :expense_type
      t.decimal :amount
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
