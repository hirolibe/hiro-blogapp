class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title # 短い文字列
      t.text :content # 長い文字列
      t.timestamps
    end
  end
end
