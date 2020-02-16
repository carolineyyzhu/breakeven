class PaymentsController < ApplicationController
  def index
    @payments = Payment.all
  end

  def create
    @payments = Payment.find(payment_params)
    redirect_to @people
  end

  def new
    @payment = Payment.new
  end

  private
    def payment_params
      params.require(:payment).permit(:description, :amount, :timelog)
    end
end
