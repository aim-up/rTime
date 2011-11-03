class AddCommentsToPunches < ActiveRecord::Migration
  def change
    add_column :punches, :comment, :string
    remove_column :users, :encrypted_password
  end
end
