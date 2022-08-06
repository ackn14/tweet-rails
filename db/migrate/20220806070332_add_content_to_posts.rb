class AddContentToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :content, :string, after: :id 
  end
end
