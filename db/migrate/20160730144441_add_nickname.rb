class AddNickname < ActiveRecord::Migration[5.0]
  def change
    add_column :Users, :nickname, :string
  end
end
