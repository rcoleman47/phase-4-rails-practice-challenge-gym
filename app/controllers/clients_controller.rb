class ClientsController < ApplicationController

  def show
    client = Client.find(params[:id])
    render json: client, only: [:name, :age], methods: [:total_memberships_cost]
  end
end
