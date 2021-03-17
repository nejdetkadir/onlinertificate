class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.string :fullname
      t.string :phone_number
      t.string :email
      t.string :code, unique: true
      t.string :from
      t.boolean :is_active, null: false, default: true

      t.timestamps
    end
  end
end
