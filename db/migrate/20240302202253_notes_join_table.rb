class NotesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.text :content
      t.belongs_to :user
      t.belongs_to :jar
      t.timestamps
    end
  end
end
