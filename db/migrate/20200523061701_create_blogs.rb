class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :nickname
      t.text :text
      t.integer :rate
      
      t.timestamps
    end
  end
end
