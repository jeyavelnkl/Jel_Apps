class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :employee_code
      t.string :name
      t.string :known_as
      t.string :gender
      t.string :city_of_birth 
      t.string :official_email
      t.string :fathers_name
      t.string :religion
      t.string :nationality
      t.date :dob
      t.string :country_of_birth
      t.string :domicilie_state
      t.string :personal_email
      t.string :community
      t.string :mother_tongue
      t.date :doj
      t.string :mobile_no
      t.text :permanant_address
      t.text :mailing_address
      t.integer :total_year_experience
      t.string :primary_skill
      t.string :secondary_skill
      t.string :other_skill
      t.string :exp_domain
      t.string :exp_technologies
      t.string :exp_functions
      t.references :access_level, foreign_key: true
      t.references :department, foreign_key: true
      t.references :desigination, foreign_key: true
      t.references :project, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
    add_index :employees, :employee_code, unique: true
  end
end

