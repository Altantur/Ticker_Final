class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.references :polls
      t.string "value", :limit => 100
      t.string "result", :limit => 100
      t.timestamps
    end
    add_index :answers, :polls_id
  end

  def self.down
  	drop_table :answers
  end
end
