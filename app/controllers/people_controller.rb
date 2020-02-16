class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_path
    else
      render 'new'
    end
  end

  def update
    @person = Person.find(params[:id])

    if @person.update
      redirect_to people_path
    else
      render 'edit'
    end
  end

  def new
    @person = Person.new
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to people_path
  end

  private
    def person_params
      params.require(:person).permit(:name)
    end
end
