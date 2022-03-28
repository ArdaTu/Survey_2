class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options, :id=> false do |t|
      t.integer :id, :primary_key => false
      t.text :title
      t.integer :question_id
      t.belongs_to :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
