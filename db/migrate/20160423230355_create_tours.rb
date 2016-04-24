class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :Type_of_tour
      t.date :Date_of_tour
      t.time :Time_of_tour

      t.timestamps null: false
    end
  end
end
