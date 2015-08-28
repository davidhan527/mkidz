class RegistrationController < ApplicationController
  def number_of_children

  end

  def new_registration
    @parent = Parent.new

    if params[:number_of_children].to_i > 0
      params[:number_of_children].to_i.times { @parent.children.build}
    else
      flash.now[:error] = "Please specify a number greater than 0"
      render :number_of_children
    end
  end

  def create_registration
    @parent = Parent.new(parent_params)

    if @parent.save
      redirect_to :root
    else
      render :new_registration
    end
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
