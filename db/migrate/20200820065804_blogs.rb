class Blogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :content
    end
  end
end
