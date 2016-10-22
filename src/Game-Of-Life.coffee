Cell = require './Cell'

class Game_of_Live

  constructor: ->
    @.cells = []

  add_Cell: (x, y)->
    cell = new Cell(x,y)
    @.cells.push cell


  all_Neighbours: (callback)->
    neighbours: {}

    return neighbours


  cell_Neighbours: (cell)->

  cell_Alive: (cell)->

  kill_Cell: (cell)->

  # rule engine
  apply_Rules: (cell)->

module.exports =   Game_of_Live