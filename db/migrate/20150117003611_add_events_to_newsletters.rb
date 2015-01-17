class AddEventsToNewsletters < ActiveRecord::Migration
  def change
    add_column :events, :newsletter_id, :integer
  end
end
