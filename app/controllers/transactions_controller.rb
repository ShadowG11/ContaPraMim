class TransactionsController < ApplicationController
  def show
    @transaction = Transaction.find(params[:id])
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)

    if @transaction.save
      redirect_to @transaction
    else
      render :new, status: :unprocessable_entity
    end
  end

  def transaction_params
    params.require(:transaction).permit(:title, :value, :type, :date)
  end
end
