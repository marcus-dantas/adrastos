class CreateSubDiscussions < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_discussions do |t|
      t.string :title
      t.references :discussion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
