### Micro-services architecture


```viz
digraph {
  size ="5.4"
  node [shape=box]

  "Game of Life" -> "Transformer" [label="(world)"]

  "Transformer" -> "Rules Engine" [label="parallel, for each cell of world"]
  "Rules Engine"-> "Neybers" [label="(world,cell)"]
  "Neybers"     -> "Neyber" [label="(cell)"]
  "Neyber"     -> "Neybers" [label="(world_with_neybers)"]
  "Neybers"    -> "Rules Engine"  [label="(consolidated_neybers)"]
  "Rules Engine" -> "Rule - Over-population"
  "Rules Engine" -> "Rule - Under-population"
  "Rules Engine" -> "Rule - Survival"
  "Rules Engine" -> "Rule - Reproduction"

  "Rules Engine" -> "Transformer" [label="(mapped_cell)"]

  "Transformer" -> "Aggregator" [label="(mapped_cells)"]
  "Aggregator" -> "Transformer" [label="(new world)"]
  "Transformer" -> "Game of Life" [label="(new world)"]
}
```



### Tests

```java
  @Test Neyber
  Given a Cell and a World
  Return 'world-with-neyber'
```

```java
  @Test Neybers
  Given a World
  Foreach cell in World
    Call 'Neyber' Service
  Create  world-with-neybers from the Join of all 'world-with-neyber'
  Return world-with-neybers
```
