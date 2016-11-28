class Event < ApplicationRecord

  validates :name, :location, presence: true
  validates :description, length: { minimum: 10 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :capacity, numericality: { only_integer: true, greater_than: 0 }

  has_many :registrations, dependent: :destroy


  scope :upcoming, -> { where('starts_at >= ?', Time.now).order(:starts_at) }
  
  def free?
    price.blank? || price.zero?
  end

  def spots_left
    if capacity.nil?
      0
    else
      capacity - registrations.size
    end
  end

  def sold_out?
    spots_left.zero?
  end
end
