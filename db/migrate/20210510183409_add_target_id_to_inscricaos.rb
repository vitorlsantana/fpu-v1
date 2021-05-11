class AddTargetIdToInscricaos < ActiveRecord::Migration[6.1]
  def change
    add_column :inscricaos, :target_id, :integer
  end
end
