class ExpensesController < ApplicationController
  def index
     @expenses = Expense.order("date DESC")
      
      if params[:concept].present?
        @expenses = @expenses.where("concept LIKE :query", query: "%#{params[:concept]}%")
      end


      
      if (params[:category_id].present?)
        @expenses = @expenses.where("category_id LIKE :query", query: "%#{params[:category_id]}%")
      end

  end
end





      # if params[:concept].present?
      #   @expenses = @expenses.where("concept LIKE :query", query: "%#{params[:concept]}%")
      # end


      # if (params[:category_id].present?)
      #   @expenses = @expenses.where("category_id LIKE :query", query: "%#{params[:category_id]}%")
      # end






      # if (params[:concept].present? && params[:category].present?)
      #   @expenses1 = @expenses.where("concept LIKE :query", query: "%#{params[:concept]}%")
      #   @expenses = @expense1.where("category LIKE :query", query: "%#{params[:category]}%")
      # end
