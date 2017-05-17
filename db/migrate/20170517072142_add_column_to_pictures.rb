class AddColumnToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :title, :string
    add_column :pictures, :avatar, :string
    add_column :pictures, :content, :text
  end
end
