class CreateFaqs < ActiveRecord::Migration[6.1]
  def change
    create_table :faqs do |t|
      t.string :ask
      t.text :answer

      t.timestamps
    end
  end
end
