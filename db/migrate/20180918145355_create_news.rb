class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :author
      t.string :content
      t.string :description
      t.string :published_at
      t.string :source
      t.string :title
      t.string :url
      t.string :url_to_image
      
      t.timestamps
    end
  end
end
