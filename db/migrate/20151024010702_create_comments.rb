class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :description
      t.integer :article_id

      t.timestamps
    end
  end
end
