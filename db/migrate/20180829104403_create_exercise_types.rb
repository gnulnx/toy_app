class CreateExerciseTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_types do |t|
      t.string :name
      t.string :primary_muscles

      t.timestamps
    end
  end
end
