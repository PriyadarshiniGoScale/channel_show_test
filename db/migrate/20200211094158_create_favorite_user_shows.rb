class CreateFavoriteUserShows < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_user_shows do |t|
      t.references :show, foreign_key: true
      t.references :user, foreign_key: true
      t.string :reminder_job_id
      t.timestamps
    end
  end
end
