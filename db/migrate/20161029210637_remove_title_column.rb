class RemoveTitleColumn < ActiveRecord::Migration[5.0]
  def change
  	remove_column :snippets, :title, :string
  end
end
