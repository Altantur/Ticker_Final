class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string "Name", :limit => 100
      t.text "Body"
      t.timestamps
    end
  end
end
