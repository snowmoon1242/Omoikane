class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :book_name
      t.string :book_author
      t.string :book_publish_name
      t.date :book_publish_date

      t.timestamps
    end
  end
end
