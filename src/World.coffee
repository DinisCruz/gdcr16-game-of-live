class World
  constructor: (cells)->
    @.cells = cells ? []

  add_Cell: (cell) ->
    @.cells.push cell
    @

  add_Cells: (cells) ->
    @.cells = @.cells.concat cells

  empty: ()->
    @.cells = []
    @

module.exports = World