require 'pp'

class TodosController < ApplicationController
  def index
    puts "**********COOKIES**************"
    puts request.headers["HTTP_COOKIE"].try(:split, ';')
    puts "*******************************"
    @todos = Todo.all
  end
end
