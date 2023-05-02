class AddJtiToSingers < ActiveRecord::Migration[7.0]
  def change
    add_column :singers, :jti, :string, null: false
    add_index :singers, :jti, unique: true
  end
end
