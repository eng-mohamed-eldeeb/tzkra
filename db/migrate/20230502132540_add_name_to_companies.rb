class AddNameToCompanies < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :img_url, :string
    add_column :companies, :bio, :text
    add_column :companies, :location, :string
  end
end
