class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :nome
      t.string :descricao
      t.integer :duracao
      t.string :eixo

      t.timestamps
    end
  end
end
