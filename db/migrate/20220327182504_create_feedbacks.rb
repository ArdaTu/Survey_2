class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks, :id => false do |t|
      t.integer :id, :primary_key => false
      t.integer :survey_id
      t.belongs_to :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
