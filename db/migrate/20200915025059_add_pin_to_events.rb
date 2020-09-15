class AddPinToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :pin, :integer
  end
end
