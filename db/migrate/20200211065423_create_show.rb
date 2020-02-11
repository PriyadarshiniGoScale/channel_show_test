class CreateShow < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
    	t.string :name, null: false
    	t.datetime :start_time, null: false
    	t.datetime :end_time, null: false
    	t.references :channel, foreign_key: true
    end
  end
end
