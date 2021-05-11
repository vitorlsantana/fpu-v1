class CreateInscricaos < ActiveRecord::Migration[6.1]
  def change
    create_table :inscricaos do |t|

      t.timestamps
    end
  end
end
