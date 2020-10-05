class AddPasswordToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :password_digest, :string
  end
end
