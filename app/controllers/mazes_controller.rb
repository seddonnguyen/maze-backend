class MazesController < ApplicationController
  def index
    maze = Maze.all
    render json: maze
  end

  def update
    maze = Maze.find(params[:id])
    maze.start = params[:start]
    maze.end = params[:end]

    path = `./bin/solveMaze ./bin/spiderMaze.txt #{params[:start]} #{params[:end]}`
    maze.path = path
    maze.save

    render json: maze
  end

  private

  def allow_params
    params.require(:maze).permit(:start, :end)
  end
end