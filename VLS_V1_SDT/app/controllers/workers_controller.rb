class WorkersController < InheritedResources::Base
  
  def index
    @worker = Worker.all
  end

  def show
  end

  
  def new
    @worker = Worker.new
  end

  def edit
  end

  private

    def worker_params
      params.require(:worker).permit()
    end
end

