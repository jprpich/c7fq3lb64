class ExpensesController < ApplicationController
  before_action :authenticate_user!
  def index
    user = User.find(current_user.id)
     @expenses = user.expenses.order("date DESC")
     @expenses = Expense.where(user_id: current_user.id).order("date DESC")
  end
end