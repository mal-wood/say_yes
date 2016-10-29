class CreateSnippets < ActiveRecord::Migration[5.0]
  def change
    create_table :snippets do |t|
    	t.string :title
    	t.string :body
    	t.integer :user_id
    end
  end
end
