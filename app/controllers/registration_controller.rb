class RegistrationController < ApplicationController
  def number_of_children

  end

  def new_registration
    @parent = Parent.new
    1.times { @parent.children.build}
  end

  def create_registration
    @parent = Parent.new(parent_params)
    @parent.save!


    render json: @parent
  end

  private

  def parent_params
    params.require(:parent).permit(
      :name,
      :first_name,
      :last_name,
      :second_guardian_first_name,
      :second_guardian_last_name,
      :mailing_address,
      :phone_number,
      :email,
      :emergency_contact_preference,
      :under_five_bathroom_policy_agreement,
      :received_policies_pamphlet,
      :notes_on_general_concerns,
      children_attributes: [
        :first_name,
        :last_name,
        :dob,
        :have_allergies,
        :allergy_explanation,
        :snack_permission_agreement
      ]
    )
  end
end
