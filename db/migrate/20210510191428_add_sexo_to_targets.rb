class AddSexoToTargets < ActiveRecord::Migration[6.1]
  def change
    add_column :targets, :sexo, :string
  end
end
