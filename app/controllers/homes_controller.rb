require "sablon"
class HomesController < ApplicationController
  def index

  end

  def gen_contacts
    template = Sablon.template("#{Rails.root}/public/templates/template.docx")
    context = {
        year: params[:year],
        month: params[:month],
        day: params[:day],
        providor:  params[:providor]
    }
    path = "#{Rails.root}/public/outputs/outputs-#{Time.now.strftime('%Y%m%d%H%M%S')}.docx"
    template.render_to_file path, context
    send_file path
  end
end
