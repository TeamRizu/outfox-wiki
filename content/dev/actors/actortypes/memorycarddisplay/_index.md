---
title: MemoryCardDisplay
weight: 3
geekdocCollapseSection: true
---

Creates an [ActorFrame](../actorframe/) that contains a [Sprite](../sprite/) with the current status for a Player's MemoryCard.

```lua
Def.MemoryCardDisplay{
	PlayerNumber=PLAYER_1
}
```

On each memory card update, the actor will be updated to detect if the card is loaded, ejected, checking, toolate, non-existent, and others.

{{<hint info>}}
The graphics used to update this actor are located in `Graphics/MemoryCardDisplay [Card State] p[PlayerNumber index]`.
{{</hint>}}

{{<expand "List of MemoryCard states used by MemoryCardDisplay.">}}
- MemoryCardDisplay checking p1
- MemoryCardDisplay checking p2
- MemoryCardDisplay error p1
- MemoryCardDisplay error p2
- MemoryCardDisplay late p1
- MemoryCardDisplay late p2
- MemoryCardDisplay none p1
- MemoryCardDisplay none p2
- MemoryCardDisplay ready p1
- MemoryCardDisplay ready p2
- MemoryCardDisplay removed p1
- MemoryCardDisplay removed p2
{{</expand>}}

## Attributes

| Name | Type | Action |
| :--- | :--- | :----- |
PlayerNumber | PlayerNumber | The player to check its current MemoryCard state.