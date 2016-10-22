class Functions

  tick: (world)->
    return []

  all_Neibers: (world)=>
    raw_Neibers = world.map @.cell_Neibers

    results = {}
    for neiber in raw_Neibers
      for item in neiber
        key = "#{item[0]},#{item[1]}"
        results[key]?=0
        results[key]++
    return results

  consolildate_Neibers: (cell_Neibers)->

  cell_Neibers: (cell)->
    x = cell[0]
    y = cell[1]
    result = [ [x-1,y-1], [x,y-1], [x+1,y-1],
               [x-1,y],            [x+1,y],
               [x-1,y+1], [x,y+1], [x+1,y+1]]
    return result

  rule_Under_Performace: (world, neibers)->

  rule_Over_Population: ->

  rule_Survival: ->

  rule_Reproduction: ->


module.exports = Functions