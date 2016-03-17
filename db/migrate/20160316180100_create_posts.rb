class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.try :description

      t.timestamps null: false
    end
  end
end
