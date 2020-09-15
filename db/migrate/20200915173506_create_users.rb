class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.references :event, null: false, foreign_key: true
    end
  end
end
