json.extract! employee, :id, :employee_code, :name, :email, :mobile_no, :role_id, :location_id, :project_id, :skill_id, :experience, :created_at, :updated_at
json.url employee_url(employee, format: :json)
