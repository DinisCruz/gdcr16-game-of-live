Cells = require './Cells'

class Game_of_Life

  calculate_Cell_Neighbours: (cell)->
    cells = new Cells()

    using cells, ->
      @.add_Cell cell, -1, -1
      @.add_Cell cell, -1, 0
      @.add_Cell cell, -1, 1

#      @.add_Cell cell, 0, -1
#      @.add_Cell cell, 0,  1
#
#      @.add_Cell cell, 1, -1
#      @.add_Cell cell, 1, 0
#      @.add_Cell cell, 1, 1


    #cells.push new Cell(x -1 , y -1)
#      cells.push new Cell(x -1 , y -1)
#      cells.push new Cell(x -1 , y -1)
#      cells.push new Cell(x -1 , y -1)
#      cells.push new Cell(x -1 , y -1)
#      cells.push new Cell(x -1 , y -1)


    return cells

  run: (world)->

    world.cells= []
    return world



module.exports = Game_of_Life