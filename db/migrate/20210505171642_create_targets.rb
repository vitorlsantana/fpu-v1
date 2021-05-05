class CreateTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :targets do |t|
      t.string :name
      t.integer :cpf
      t.string :municipio
      t.string :uf
      t.string :email
      t.integer :telefone

      t.timestamps
    end
  end
end
