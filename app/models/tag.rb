class Tag < ApplicationRecord

  # Make self association for sub tags
  has_many :subtags, class_name: "Tag",
                      foreign_key: "parent_tag_id"

  belongs_to :parenttag, class_name: "Tag", 
                          optional: true

  # A specific tag on multiple campaigns
  has_and_belongs_to_many :campaigns

  # Active record validations
  validates :name, 
              presence: true,
              length: {minimum: 1, maximum: 25}

end
