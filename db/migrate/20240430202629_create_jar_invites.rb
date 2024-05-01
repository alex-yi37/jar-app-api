class CreateJarInvites < ActiveRecord::Migration[7.0]
  def change
    create_table :jar_invites do |t|
      # creating this table to reference two different users in the User table: the user that created the invite
      # and the user who the invite is being sent to. Reference below SO thread:
      # believe this one is to update an existing table
      # https://stackoverflow.com/questions/34697634/same-model-for-two-belongs-to-associations-migration
      # and this one is for creating a table with the references (which is what I want I believe):
      # https://stackoverflow.com/questions/59996357/rails-activerecord-two-fields-each-referencing-the-same-table
      t.references :sender, foreign_key: { to_table: :users }
      t.references :recipient, foreign_key: { to_table: :users }
      t.belongs_to :jar
      # don't know how to create a column with default value when creating a table, so will add the :status column
      # in a migration bc there are more examples of how to do that online, seen below:
      # https://blog.saeloun.com/2022/01/05/how-to-use-enums-in-rails/
      t.timestamps
    end
  end
end
