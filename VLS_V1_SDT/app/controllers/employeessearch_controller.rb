class EmployeessearchController < ApplicationController
  def index
  	
    puts '------'+params.inspect
  	@search = Employee.search do
        fulltext params[:search]
    end
    @employees = @search.result

    puts  @employees.inspect
	 
  end
end
