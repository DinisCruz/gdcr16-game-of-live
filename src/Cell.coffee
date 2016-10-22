class Cell
  constructor: (x,y)->
    @.friends_Alive = []
    @.friends_Dead  = []
    @.x             = x || 0
    @.y             = y || 0
    @.alive         = true
    @.dead          = false

  die: ->
    @.alive         = false
    @.dead          = true

  rule_Die_If_Undepopulation: ->
    if @.alive and 1 > @.friends_Alive and 4 < @.friends_Alive
      @.die()

    console.log 'helllkajsdlaksdjo'

module.exports = Cell