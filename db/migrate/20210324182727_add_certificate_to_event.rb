class AddCertificateToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :certificate_scaffold, :string, null: false, default: ""
  end
end
