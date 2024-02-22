class CreateJars < ActiveRecord::Migration[7.0]
  def change
    create_table :jars do |t|
      t.string :display_name
      t.string :description
      t.string :submission_time
      t.string :design_type

      t.timestamps
    end
  end
end
