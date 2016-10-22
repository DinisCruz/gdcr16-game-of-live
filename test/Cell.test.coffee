require 'fluentnode'

Cell = require '../src/Cell'

describe 'Cell' ,->
  it 'constructor (no values)', ->
    using new Cell, ->
      @.friends_Alive.assert_Is []
      @.friends_Dead .assert_Is []
      @.x           .assert_Is 0
      @.y           .assert_Is 0
      @.alive       .assert_Is_True()
      @.dead        .assert_Is_False()

  it 'constructor (with x,y)', ->
    x = 100.random()
    y = 100.random()
    using new Cell(x,y), ->
      @.x.assert_Is x
      @.y.assert_Is y

  it 'rule_Die_If_Undepopulation', ->
    using new Cell(), ->
      @.rule_Die_If_Undepopulation()
