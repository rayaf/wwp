class CreateComentarios < ActiveRecord::Migration[6.0]
  def change
    create_table :comentarios do |t|
      t.string :texto
      t.references :tweet, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
