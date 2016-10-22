Cell  = require './Cell'
class Cells
  constructor: (items)->
    @.items = items ? []

  add_Cell: (cell, x, y)=>
    @.items.push new Cell(cell.x+x , cell.y+y)

module.exports = Cells