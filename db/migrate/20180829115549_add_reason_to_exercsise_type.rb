class AddReasonToExercsiseType < ActiveRecord::Migration[5.2]
  def change
    add_column :exercise_types, :reason, :string
  end
end
