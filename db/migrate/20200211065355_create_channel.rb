class CreateChannel < ActiveRecord::Migration[5.2]
  def change
    create_table :channels do |t|
    	t.string :name, null: false, uniq: true
    end
  end
end
