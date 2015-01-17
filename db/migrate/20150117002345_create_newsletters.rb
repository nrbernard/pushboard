class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.date :date
      t.string :status
      t.timestamps
    end
  end
end
