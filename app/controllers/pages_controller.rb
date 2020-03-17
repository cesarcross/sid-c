class PagesController < ApplicationController
  def contato
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.deliver
      flash[:notice] = 'Mensagem enviada com sucesso! Responderemos em breve.'
      redirect_to contato_path
    else
      render :contato
    end
  end

  private

  def page_params
    params.require(:page).permit(:name, :email, :phone, :message, :text)
  end
end
