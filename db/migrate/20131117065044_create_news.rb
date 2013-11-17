class CreateNews < ActiveRecord::Migration

  def self.up
    create_table :news do |t|
      t.references :admins
      t.string "title"
      t.text "body"
      t.timestamps
    end
 	add_index :news, :admins_id
  end

  def self.down
  	drop_table :news
  end
end
