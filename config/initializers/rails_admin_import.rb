# frozen_string_literal: true

RailsAdmin.config do |config|
  # REQUIRED:
  # Include the import action
  # See https://github.com/sferik/rails_admin/wiki/Actions
  config.actions do
    all
    import
  end

  config.configure_with(:import) do |config|
    config.line_item_limit = 100_000
  end

  config.model 'Player' do
    import do
      field :id
      field :first_name
      field :last_name
      field :hand
      field :birth_date
      field :country
    end
  end

  config.model 'Ranking' do
    import do
      field :ranking_date
      field :position
      field :player_id
      field :ranking_points
    end
  end
end
