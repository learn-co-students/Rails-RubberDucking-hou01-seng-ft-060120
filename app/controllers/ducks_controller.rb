class DucksController < ApplicationController
  before_action :find_duck, only: [:show, :edit, :update]

  def index
    @ducks = Duck.all
  end

  def show
    
  end

  def new
    @duck = Duck.new
    @students = Student.all
  end

  def create 
    @duck = Duck.new(duck_params)
      if @duck.valid?
        @duck.save
        redirect_to ducks_path
      else
        redirect_to new_duck_path
      end
  end

  def update
    @duck.update(duck_params)
    redirect_to @duck
  end

  def edit
    @students = Student.all
  end
     


  private

  def duck_params
    params.require(:duck).permit(:name, :description, :student_id)
  end

  def find_duck
    @duck = Duck.find(params[:id])
  end

end
