class AddColumnAuthor < ActiveRecord::Migration[5.0]
  def change
  	add_column :snippets, :author_name, :string
  end
end
