class AddUserIdArticles < ActiveRecord::Migration[6.0]
  def change
    # add_column :articles, :user_id, :integer
    # :テーブル名, :追加したいカラム名, :データの型
    add_reference :articles, :user
  end
end
