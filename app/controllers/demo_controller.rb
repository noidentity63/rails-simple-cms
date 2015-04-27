class DemoController < ApplicationController

  layout false

  def index
    @temp_id = 24
  end

  def hello
    @array = [1,2,3,4,5,6,7,8,9]
    @id = params['id'].to_i
    @page = params[:page].to_i
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'index')
  end

  def wikipedia
    redirect_to('http://wikipedia.org')
  end
  
end
