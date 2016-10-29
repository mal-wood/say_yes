class CreateSnippets < ActiveRecord::Migration[5.0]
  def change
    create_table :snippets do |t|
    	t.string :title, null: false
    	t.string :body, null: false 

    	t.integer :user_id 
    end
  end
end
