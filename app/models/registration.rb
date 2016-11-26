class Registration < ApplicationRecord
  
  validates :name, presence: true

  HOW_HEARD_OPTIONS = [ 
    'Newsletter',
    'Blog Post',
    'Twitter',
    'Web Search',
    'Friend/Coworker',
    'Other'
  ]

  belongs_to :event
end
