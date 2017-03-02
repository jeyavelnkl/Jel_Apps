ActiveAdmin.register Employee do

permit_params :employee_code, :name, :email, :mobile_no, :experience, :role_id, :project_id, :location_id, :skill_id

index do
  excluded_columns = ["created_at", "updated_at"]
  (Employee.column_names - excluded_columns).each do |col|
    column col.to_sym
  end
  actions
end

form do |f|
    f.semantic_errors(*f.object.errors.keys)  # shows errors on :base
    f.inputs "Employee Details" do
      f.input :employee_code
      f.input :email
      f.input :mobile_no
      f.input :experience
      f.input :role_id, as: :select, collection: Role.all.map{|r| [r.name, r.id]}
      f.input :project_id, as: :select, collection: Project.all.map{|p| [p.name, p.id]}
      f.input :location_id, as: :select, collection: Location.all.map{|l| [l.name, l.id]}
      f.input :skill_id, as: :select, collection: Skill.all.map{|s| [s.name, s.id]}
    end
    f.actions
  end

end
