require 'fluentnode'

Body = require '../src/Body'

describe 'Cell' ,->
  it 'constructor', ->
    using new Body, ->
      @.cells.assert_Is []

  it 'create_Cell', ->
    using new Body, ->
      cell = @.create_Cell(0,1)
      cell.x.assert_Is 0
      cell.y.assert_Is 1
      cell.alive.assert_Is_True()
      cell.dead.assert_Is_False()

      @.cells.assert_Contains cell


