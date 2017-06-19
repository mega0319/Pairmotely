class PokerTablesController < ApplicationController

  def index
    ptables = PokerTable.all
    render json: ptables
  end

  def create
    table = PokerTable.new(poker_table_params)
    table.name = Faker::StarWars.planet
    table.save
    # byebug
    params[:user_updates][:user_id].each do |user_id|
      user = User.find(user_id)
      table.users << user
      user.current_table = table.id
      user.save
      # byebug
    end
    # byebug
    table.save
    render json: table
  end

  def update
    table = PokerTable.find(params[:id])
    table.update(poker_table_params)
    table.save
    render json: table
    # byebug
  end

  def delete

  end


  private

  def poker_table_params
    params.require(:poker_table).permit!
  end

end
