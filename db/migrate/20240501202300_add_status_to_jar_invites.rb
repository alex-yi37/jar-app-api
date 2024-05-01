class AddStatusToJarInvites < ActiveRecord::Migration[7.0]
  def change
    add_column :jar_invites, :status, :integer, default: 0
  end
end
