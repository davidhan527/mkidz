class Parent < ActiveRecord::Base
  has_many :children

  accepts_nested_attributes_for :children

  enum emergency_contact_preference: { text_me: 0, call_me: 1 }
end
