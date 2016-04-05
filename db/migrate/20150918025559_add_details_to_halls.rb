class AddDetailsToHalls < ActiveRecord::Migration
  def change
    add_column :halls, :info, :text
    add_attachment :halls, :avatar
  end
end