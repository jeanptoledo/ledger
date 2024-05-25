
require 'csv'

class ReportsMailer < ActionMailer::Base
  default from: 'notifications@example.com'

  def run(email) 
    attachments['report.csv'] = {
      mime_type: 'text/csv',
      content: GenerateCsvReportService.new.call
    }

    mail(to: email, subject: 'Ledger reports lits', body: 'Fallback template content')
  end
end