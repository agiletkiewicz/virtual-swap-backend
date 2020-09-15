class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :size
      t.text :notes
      t.references :user, null: false, foreign_key: true
    end
  end
end
