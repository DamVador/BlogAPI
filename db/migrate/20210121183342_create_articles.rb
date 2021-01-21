class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :signature

      t.timestamps
    end
  end
end
