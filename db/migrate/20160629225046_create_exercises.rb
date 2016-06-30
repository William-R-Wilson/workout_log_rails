class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.boolean :time_based
      t.boolean :weight
      t.boolean :sets
      t.boolean :reps

      t.timestamps null: false
    end
  end
end
