### Micro-services architecture


```viz
digraph {
  size ="6.4"
  node [shape=box]

  "Game of Life" -> "Transformer" [label="(world)"]

  "Transformer" -> "Rules Engine" [label="cell, join-world-with-neybers"]
  "Transformer"-> "Neybers" [label="(world)"]  

  "Neybers"     -> "Neyber" [label="(cell,world)"]
  "Neyber"     -> "Neybers" [label="(world_with_neybers)"]
  "Neybers"    -> "Transformer"  [label="(consolidated_neybers)"]

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
  Return 'world-with-neybers'
```

```java
  @Test Neybers
  Given a World
  Foreach cell in World
    Call 'Neyber' Service
  Create  'join-world-with-neybers' from the Join of all 'world-with-neybers'
  Return 'join-world-with-neybers'
```


```java
  @Test Rule_Engine
  Given the 'join-world-with-neybers' and cell
  Foreach known Rule
    Call rule For cell With 'join-world-with-neybers'
  Create mapped-cell from the Join of rules Result
  Return 'mapped-cell'
```


```java
  @Test Transformer

```
