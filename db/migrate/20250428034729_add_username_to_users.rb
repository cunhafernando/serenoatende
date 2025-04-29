class AddUsernameToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :name, :string
    add_column :users, :user_type, :string # 'terapeuta' ou 'paciente'
  end
end
