class AddContentToXclones < ActiveRecord::Migration[7.1]
  def change
    add_column :xclones, :content, :text
  end
end
