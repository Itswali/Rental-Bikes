class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.belongs_to :user, null: false, foreign_key: true
      # t.belongs_to :item, null: false, foreign_key: true
      t.date :Date
      t.string :city

      t.timestamps
    end
  end
end
