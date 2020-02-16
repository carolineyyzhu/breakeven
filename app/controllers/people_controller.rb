class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:person_id])
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_path
    else
      render 'new'
    end
  end

  def new
    @person = Person.new
  end

  def destroy
    @person = Person.find(params[:person_id])
    @person.destroy
    redirect_to people_path
  end

  private
    def person_params
      params.require(:person).permit(:name)
    end
end
