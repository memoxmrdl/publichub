class CreateAdverts < ActiveRecord::Migration
  def change
    create_table :adverts do |t|
      t.string :name
      t.text :description
      t.string :schedule
      t.string :phone
      t.references :user, index: true

      t.timestamps
    end
  end
end
