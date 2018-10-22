class AddPublishedToNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :notes, :published, :date
  end
end
