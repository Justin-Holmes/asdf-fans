class Api::TodosController < ActionController::API
  def create
    todo = Todo.create(name: params['name'])
    render json: todo
  end
end
