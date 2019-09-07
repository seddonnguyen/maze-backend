# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Maze.delete_all


path = `./bin/solveMaze ./bin/spiderMaze.txt #{0} #{92}`
Maze.create(start: 0, end: 92, path: path)