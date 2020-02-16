class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.find(person_params)
    if @person.save
      redirect_to @people
    else
      render 'new'
    end
  end

  def new
    @person = Person.new
  end

  private
    def person_params
      params.require(:person).permit(:name)
    end
end
