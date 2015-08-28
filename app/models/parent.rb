class Parent < ActiveRecord::Base
  has_many :children

  accepts_nested_attributes_for :children

  enum emergency_contact_preference: { text_me: 0, call_me: 1 }

  validates :first_name,
    :last_name,
    :phone_number,
    :email,
    :emergency_contact_preference,
    :under_five_bathroom_policy_agreement,
    :received_policies_pamphlet,
    :under_five_bathroom_policy_agreement,
    presence: true
end

