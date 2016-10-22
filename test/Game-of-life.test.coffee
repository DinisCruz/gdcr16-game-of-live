Cell         = require '../src/Cell'
World        = require '../src/World'
Game_of_Life = require '../src/Game-of-Live'

describe 'Game-of-life', ->

  it 'should return empty world given empty world', ->
    empty_World    = new World()
    expected_World = new World()

    using new Game_of_Life(), ->
      next_World = @.run empty_World

      next_World.cells.assert_Is expected_World.cells


  it 'calculate_Cell_Neighbours', ->
    cell = new Cell(1,1)
    expected_Neighbours = [new Cell(0,0), new Cell(0,1), new Cell(0,2) ]
    using new Game_of_Life(), ->
      neighbours = @.calculate_Cell_Neighbours cell
      neighbours.items.assert_Is expected_Neighbours



  xit 'calculate_Neighbours', ->
    world = new World()
    expected_Neighbours = []
    using new Game_of_Life(), ->
      neighbours = @.calculate_Neighbours()
      neighbours.items.assert_Is []




  it 'should return empty world given world with 1 cell', ->
    one_Cell_World    = new World().add_Cell(new Cell(1,1))

    using new Game_of_Life(), ->
      next_World = @.run one_Cell_World
      next_World.cells.assert_Is []

  xit 'should return empty world given world with 2 connected cell', ->
    two_Cell_World    = new World().add_Cell(new Cell(1,1))
                                   .add_Cell(new Cell(1,2))

    using new Game_of_Life(), ->
      next_World = @.run two_Cell_World
      next_World.cells.assert_Is []

  xit 'should return empty world given world with 2 connected cell', ->
    three_Cell_World    = new World().add_Cell(new Cell(1,1))
                                     .add_Cell(new Cell(1,2))
                                     .add_Cell(new Cell(1,3))

    expected_Cell_World    = new World().add_Cell(new Cell(0,2))
                                        .add_Cell(new Cell(1,2))
                                        .add_Cell(new Cell(2,2))


    using new Game_of_Life(), ->
      next_World = @.run three_Cell_World
      next_World.cells.assert_Is expected_Cell_World.cells









