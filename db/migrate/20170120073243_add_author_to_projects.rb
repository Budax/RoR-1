class AddAuthorToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :author, :string
  end
end
