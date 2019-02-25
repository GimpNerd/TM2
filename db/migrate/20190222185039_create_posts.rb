class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :gamertag
      t.text :entry

      t.timestamps
    end
  end
end
