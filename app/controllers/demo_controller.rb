class DemoController < ApplicationController

  layout false


  def index
    #Default behavior
    #render('index')
  end
  def about
    render('about_us')

  end

  def contact
    if ['us','ca'].include?(params[:country])
      @phone = '(800) 555-6789'
    elsif params[:country] == 'uk'
      @phone = '(020) 3943-3234'
    else
      @phone = '+1 (323)-432-3423'
    end
    render('contact_us')
  end


  def hello
    @array=[1,2,3,4,5]  #instance
    @id=params['id']
    @page=params[:page]
    #render('hello')
    #Rediect to index
    #redirect_to(:controller => 'demo', :action => 'index')
  end
end
