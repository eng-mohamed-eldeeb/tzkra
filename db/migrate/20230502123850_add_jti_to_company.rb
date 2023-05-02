class AddJtiToCompany < ActiveRecord::Migration[7.0]
  def change
    add_column :companies, :jti, :string, null: false
    add_index :companies, :jti, unique: true
  end
end
