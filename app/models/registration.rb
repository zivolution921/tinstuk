class Registration < ApplicationRecord
  belongs_to :event
  belongs_to :user
 

  HOW_HEARD_OPTIONS = [ 
    'Newsletter',
    'Blog Post',
    'Twitter',
    'Web Search',
    'Friend/Coworker',
    'Other'
  ]

  
end
