class AddPullToPunches < ActiveRecord::Migration
  def change
    add_column :punches, :pull, :datetime
  end
end
