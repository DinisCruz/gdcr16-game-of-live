require 'fluentnode'

Game_of_Life = require '../src/Game-of-Life'

describe 'Game_of_Live', ->

  game_of_Life = null

  beforeEach ->
    game_of_Life = new Game_of_Life()

  it 'constructor', ->
    game_of_Life.cells.assert_Is []

  it 'add_Cell', ->
    x= 100.random()
    y= 123.random()

    game_of_Life.add_Cell(x, y)



