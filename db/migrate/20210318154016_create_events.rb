class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :cover
      t.date :event_date
      t.string :url
      
      t.timestamps
    end
  end
end
