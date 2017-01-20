class AddAttributesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :phone, :string
    add_column :users, :email, :string
    add_column :users, :address, :text
    add_column :users, :age, :integer
  end
end
