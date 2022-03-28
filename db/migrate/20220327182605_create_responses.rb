class CreateResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :responses, :id => false do |t|
      t.integer :id, :primary_key => false
      t.integer :question_id
      t.text :body
      t.integer :option_id
      t.integer :feedback_id
      t.belongs_to :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
