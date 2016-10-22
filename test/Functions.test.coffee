require 'fluentnode'

Functions = require '../src/Functions'

describe 'Functions', ->

  functions = null

  beforeEach ->
    functions = new Functions()

  it 'tick - should return empty world when given empty world',->
    world     = []
    expected = []
    functions.tick(world).assert_Is expected

  it 'tick - should return empty world when given world with one cell',->
    world     = [[0,1]]
    expected  = []
    functions.tick(world).assert_Is expected

  xit 'tick - should return empty world when given world with two cells',->
    world     = [[0,1], [1,1]]
    expected  = []
    functions.tick(world).assert_Is expected

  xit 'tick - should return flip world when given world with three cells in one line',->
    world     = [[0,1], [1,1], [1,2]]
    expected  = [[1,0], [1,1], [0,2]]
    functions.tick(world).assert_Is expected


  it 'all_Neibers - should return map',->
    world     = [[0,1], [1,1], [1,2]]
    expected = { '-1,0': 1, '0,0': 2,'1,0': 2,'-1,1': 1,'1,1': 2,'-1,2': 1,'0,2': 3,'1,2': 2,'2,0': 1,'0,1': 2,'2,1': 2,'2,2': 2,'0,3': 1,'1,3': 1,'2,3': 1 }
    functions.all_Neibers(world).assert_Is expected

  it 'cell_Neibers - should return all neyers',->
    cell     = [0,1]
    expected = [ [-1,0], [0,0], [1,0],
                 [-1,1],        [1,1],
                 [-1,2], [0,2], [1,2]]

    functions.cell_Neibers(cell).assert_Is expected


  it 'rule_Under_Performace', ->
    world    = [[0,1], [1,1], [1,2]]
    neibers  = functions.all_Neibers(world)
    #functions.rule_Under_Performace world, neiber

