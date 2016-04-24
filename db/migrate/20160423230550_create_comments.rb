class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :Name
      t.text :Comment

      t.timestamps null: false
    end
  end
end
