class AddDetailsColumn < ActiveRecord::Migration[5.0]
  def change

    add_column :tasks, :description, :string, null: false, default: false
  end
end
