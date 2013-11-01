class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string "value", :null => false
      t.string "result"
      t.timestamps
    end
  end
end
