# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :hand
      t.date :birth_date
      t.string :country

      t.timestamps
    end
  end
end
