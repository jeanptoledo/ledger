class ReportsController < ApplicationController
  def balance
    PersonMailer.before_report(current_user).deliver_now
    redirect_to root_path, notice: 'Não implementado'
  end
end
