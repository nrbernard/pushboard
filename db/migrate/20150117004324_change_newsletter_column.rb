class ChangeNewsletterColumn < ActiveRecord::Migration
  def change
    remove_column :newsletters, :date
    add_column :newsletters, :name, :string
  end
end
