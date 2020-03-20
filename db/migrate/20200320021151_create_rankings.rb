# frozen_string_literal: true

class CreateRankings < ActiveRecord::Migration[6.0]
  def change
    create_table :rankings do |t|
      t.date :ranking_date
      t.integer :position
      t.references :player, foreign_key: true
      t.integer :ranking_points

      t.timestamps
    end
  end
end
