class Child < ActiveRecord::Base
  belongs_to :parent

  enum snack_permission_agreement: {
    participate_in_snack_time: 0,
    dont_give_my_child_a_snack: 1,
    permission_to_bring_own_snack: 2
  }

  validates :first_name, :last_name, :dob, :have_allergies, :snack_permission_agreement, presence: true
end
