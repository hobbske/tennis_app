class CreatePlayergroups < ActiveRecord::Migration
  def change
    create_table :playergroups do |t|
      t.references :player, index: true, foreign_key: true
      t.references :group, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
