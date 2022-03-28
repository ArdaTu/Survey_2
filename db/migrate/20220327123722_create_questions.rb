class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions, :id=> false do |t|
      t.integer :id, :primary_key => false
      t.text :title
      t.integer :type
      t.integer :survey_id
      t.belongs_to :survey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
