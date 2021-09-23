class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.references :user
      t.integer :views, default: 0

      t.timestamps
    end
  end
end
