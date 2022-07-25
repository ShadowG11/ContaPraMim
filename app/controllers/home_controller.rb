class HomeController < ApplicationController
  def index
    @transactions = Transaction.all
    @incomings = Transaction.where(category: 'income').sum(:value)
    @spendings = Transaction.where(category: 'spending').sum(:value)
    @total_money = @incomings - @spendings
  end
end
