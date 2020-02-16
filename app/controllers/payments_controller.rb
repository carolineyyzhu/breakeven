class PaymentsController < ApplicationController
  def index
    @person = Person.find(params[:person_id])
    @payments = @person.payments
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def create
    @person = Person.find(params[:person_id])
    @payment = Payment.new(payment_params)
    redirect_to person_path(@person)
  end

  def new
    @person = Person.find(params[person_id])
    @payment = Payment.new
  end

  private
    def payment_params
      params.require(:payment).permit(:description, :amount, :timelog)
    end
end
