class Dropsnippets < ActiveRecord::Migration[5.0]
  def change
  	drop_table :snippets
  end
end
