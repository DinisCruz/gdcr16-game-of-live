require 'fluentnode'

World = require '../src/World'

describe 'World', ->

  it 'constructor', ->
    using new World(),->
      @.cells.assert_Is []

  it ''