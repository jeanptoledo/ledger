class ReportsController < ApplicationController

  def balance
    ReportsMailer.run(current_user.email).deliver_later
    redirect_to root_path, notice: 'Não implementado'
  end
end