class DemoController < ApplicationController
    
    def index
        #render('hello')
        #redirect_to(:action => 'other_hello')
    end
    
    def hello
    end
    
    def other_hello
        render(:text => 'Hello Everyone!')
    end
    
    def professorProfile
        @id = params[:id] 
    end
    
    def courseProfile
        @id = params[:id]
    end
    
    
end
