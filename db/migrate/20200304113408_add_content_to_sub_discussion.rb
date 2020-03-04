class AddContentToSubDiscussion < ActiveRecord::Migration[6.0]
  def change
    add_column :sub_discussions, :content, :text
  end
end
