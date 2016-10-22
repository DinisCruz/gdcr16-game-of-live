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
    using game_of_Life, ->
      @.cells.size().assert_Is 0
      @.add_Cell(x, y)
      @.cells.size().assert_Is 1
      @.cells.first().x.assert_Is x
      @.cells.first().y.assert_Is y

  it 'all_Neighbours', ->
    @.all_Neighbours{}




