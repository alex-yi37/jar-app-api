class UniqueIndexOnJarsUsers < ActiveRecord::Migration[7.0]
  def change
    add_index :jars_users, %i[user_id jar_id], unique: true, name: 'jars_users_unique_index'
  end
end
