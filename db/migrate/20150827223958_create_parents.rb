class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :name, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :second_guardian_first_name
      t.string :second_guardian_last_name
      t.string :mailing_address
      t.integer :phone_number
      t.string :email, null: false
      t.column :emergency_contact_preference, :integer, default: 0, null: false
      t.boolean :under_five_bathroom_policy_agreement, null: false
      t.boolean :received_policies_pamphlet, null: false
      t.text :notes_on_general_concerns, null: false

      t.timestamps null: false
    end
  end
end
