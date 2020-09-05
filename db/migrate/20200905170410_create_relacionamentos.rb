class CreateRelacionamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :relacionamentos do |t|
      t.references :seguidor
      t.references :seguido

      t.timestamps
    end
    add_foreign_key :relacionamentos, :users, column: :seguidor_id
    add_foreign_key :relacionamentos, :users, column: :seguido_id
  end
end
