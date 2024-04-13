class AddContentXclone < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.text :content
    end
  end
end
