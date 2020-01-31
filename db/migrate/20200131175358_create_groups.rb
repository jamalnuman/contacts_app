class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :work
      t.string :family

      t.timestamps
    end
  end
end
