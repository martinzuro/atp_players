# frozen_string_literal: true

json.extract! player, :id, :first_name, :last_name, :hand, :birth_date, :country, :created_at, :updated_at
json.url player_url(player, format: :json)
