class AddNewsletterColumns < ActiveRecord::Migration
  def change
    add_column :newsletters, :start_date, :date
    add_column :newsletters, :end_date, :date
  end
end
