class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.time :time
      t.string :location
      t.boolean :age
      t.string :cost
      t.string :email
      t.string :name
      t.string :link
      t.string :genre

      t.timestamps
    end
  end
end
