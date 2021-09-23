class AddIsBreakingNewsToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :is_breaking_news, :boolean, default: false
  end
end
