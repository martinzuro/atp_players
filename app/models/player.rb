# frozen_string_literal: true

class Player < ApplicationRecord
  include RailsAdminCharts

  has_one :ranking
  validates :first_name, presence: true
  validates :last_name, presence: true

  rails_admin do
    list do
      field :id
      field :first_name
      field :last_name
      field :hand
      field :birth_date
      field :country
    end

    object_label_method do
      :custom_label
    end
  end

  def custom_label
    "#{first_name} #{last_name}"
  end

  def self.graph_data(_since = 200.years.ago)
    Player.group(:country).count.to_a
  end

  def self.chart_type
    'pie'
  end

  def before_import_save(record)
    self.id = record[:atp_id]
    throw :skip if Player.find_by(id: record[:atp_id]).present?
  end
end
