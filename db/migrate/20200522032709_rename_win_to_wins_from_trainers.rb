class RenameWinToWinsFromTrainers < ActiveRecord::Migration[6.0]
  def change
    rename_column :trainers, :win, :wins
  end
end
