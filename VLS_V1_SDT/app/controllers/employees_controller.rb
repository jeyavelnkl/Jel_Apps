class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
  end


  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:employee_code, :name, :known_as, :gender, :city_of_birth, :official_email, :fathers_name, :religion,
       :nationality, :dob, :country_of_birth, :domicilie_state, 
       :personal_email, :community, :mother_tongue, :doj, 
       :mobile_no, :permanant_address, :mailing_address, :total_year_experience, 
       :primary_skill, :secondary_skill, :other_skill, :exp_domain, 
       :exp_technologies, :exp_functions,  )
    end
end

 # t.string   "employee_code"
 #    t.string   "name"
 #    t.string   "known_as"
 #    t.string   "gender"
 #    t.string   "city_of_birth"
 #    t.string   "official_email"
 #    t.string   "fathers_name"
 #    t.string   "religion"
 #    t.string   "nationality"
 #    t.date     "dob"
 #    t.string   "country_of_birth"
 #    t.string   "domicilie_state"
 #    t.string   "personal_email"
 #    t.string   "community"
 #    t.string   "mother_tongue"
 #    t.date     "doj"
 #    t.string   "mobile_no"
 #    t.text     "permanant_address"
 #    t.text     "mailing_address"
 #    t.integer  "total_year_experience"
 #    t.string   "primary_skill"
 #    t.string   "secondary_skill"
 #    t.string   "other_skill"
 #    t.string   "exp_domain"
 #    t.string   "exp_technologies"
 #    t.string   "exp_functions"
 #    t.integer  "access_level_id"
 #    t.integer  "department_id"
 #    t.integer  "desigination_id"
 #    t.integer  "project_id"
 #    t.integer  "location_id"