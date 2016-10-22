Cell = require '../src/Cell'

describe 'Cell', ->
  it 'constructor', ->
    using new Cell(), ->
      assert_Is_Undefined @.x
      assert_Is_Undefined @.y

    x= 100.random()
    y= 123.random()
    using new Cell(x,y), ->
      @.x.assert_Is x
      @.y.assert_Is y



