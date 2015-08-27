class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.datetime :dob, null: false
      t.boolean :have_allergies, null: false
      t.text :allergy_explanation
      t.column :snack_permission_agreement, :integer, default: 0, null: false

      t.timestamps null: false
    end
  end
end
