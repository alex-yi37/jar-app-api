class UsersJarsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :jars do |t|
      t.index :user_id
      t.index :jar_id
    end
  end
end
