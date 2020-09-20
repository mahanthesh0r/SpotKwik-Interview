class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :url
      t.string :short_url
      t.string :slug

      t.timestamps
    end
  end
end
