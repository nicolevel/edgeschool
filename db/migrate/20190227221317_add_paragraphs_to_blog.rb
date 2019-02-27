class AddParagraphsToBlog < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :paragraph2, :text
    add_column :blogs, :paragraph3, :text
    add_column :blogs, :paragraph4, :text
    add_column :blogs, :paragraph5, :text
  end
end
