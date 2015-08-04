class AddColumnToArticles < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      t.integer :userID
      t.index :userID
    end  
  end
end
