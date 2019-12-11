class Users::BoardsController < UsersController
  before_action :set_board, only: [:show]
  def show
  end

  private
  def set_board
    @board = Board.find(params[:id])
    user_boards_ids = current_user.boards.map(&:id).concat(current_user.org_boards.map(&:id))
    unless user_boards_ids.include?(@board.id)
      redirect_to dashboard_user_path(current_user)
    end
  end 

end
