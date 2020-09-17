class CreateTakes < ActiveRecord::Migration[6.0]
  def change
    create_table :takes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
    end
  end
end
