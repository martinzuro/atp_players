# frozen_string_literal: true

class Ranking < ApplicationRecord
  belongs_to :player

  rails_admin do
    list do
      sort_by :ranking_points
      field :id
      field :ranking_date
      field :position
      field :player
      field :ranking_points
    end
  end
end
