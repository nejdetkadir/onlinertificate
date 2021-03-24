class CreateParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :participants do |t|
      t.references :event, null: false, foreign_key: true
      t.string :fullname, null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :phone, null: false, default: ""
      t.string :code, null: false, default: "", unique: true
      t.string :certificate

      t.timestamps
    end
  end
end
