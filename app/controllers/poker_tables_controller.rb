class PokerTablesController < ApplicationController

  def index
    ptables = PokerTable.all
    render json: ptables
  end

  def create
    # byebug
    table = PokerTable.new(poker_table_params)
    # byebug
    params[:user_updates][:user_id].each do |user_id|
      user = User.find(user_id)
      table.users << user
      user.current_table = table.id
      user.save
    end

    table.save
    render json: table
  end

  def update

  end

  def delete

  end

  private

  def poker_table_params
    params.require(:poker_table).permit!
  end

end
