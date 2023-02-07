---
title: GradeDisplay
weight: 0
---

An [ActorFrame](../actorframe) containing [AutoActors](../) based on the number of grades available that are assigned by the theme (`PlayerStageStats::NumGradeTiersUsed`).

```lua
Def.GradeDisplay{
}
```

## Attributes

This actor inherits the attributes from [ActorFrame](../actorframe/#attributes).

## Functions

### `Load`
`(string sMetricsGroup)`

Load the graphics from a defined "metrics" group. It will seek for grade images with the following format:
```
[sMetricsGroup] Grade
```

{{<hint>}}
Internally it is called metrics, but this actor doesn't use any kind of graphics directly, other than the ammount of grades defined by `PlayerStageStats::NumGradeTiersUsed`.
{{</hint>}}

### `SetGrade`
`(Grade newGrade)`

Set the grade to display. Requires [`Load`](#load) to have been called before, otherwise it will fail.