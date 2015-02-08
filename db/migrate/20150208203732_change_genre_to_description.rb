class ChangeGenreToDescription < ActiveRecord::Migration
  def change
    rename_column :events, :genre, :description
  end
end
