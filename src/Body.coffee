Cell = require './Cell'

class Body
  constructor: ->
    @.cells = []

  create_Cell: (x,y)->
    cell = new Cell(x,y)
    @.cells.add cell
    cell




module.exports = Body