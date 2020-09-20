class CreateH1s < ActiveRecord::Migration[6.0]
  def change
    create_table :h1s do |t|
      t.string :heading
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
