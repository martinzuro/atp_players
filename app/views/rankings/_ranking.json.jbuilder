# frozen_string_literal: true

json.extract! ranking, :id, :ranking_date, :position, :player_id, :ranking_points, :created_at, :updated_at
json.url ranking_url(ranking, format: :json)
