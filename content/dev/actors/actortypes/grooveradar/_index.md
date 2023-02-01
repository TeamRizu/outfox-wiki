---
title: GrooveRadar
---

An [ActorFrame](../actorframe) which generates a pentagon-shaped radar indicating various values that correspond to several aspects of a selected or given chart.

```lua
Def.GrooveRadar{
    OnCommand=function(self)
        self:SetFromValues(
            PLAYER_1,
            {
                0.5,
                0.3,
                0.5,
                0.8,
                1
            }
        )

        -- Depending on where this sample code is loaded at, this next call can be successful, or will result empty based on the case
        -- that PLAYER_2 has steps selected.
        local PlayerTwoSteps = GAMESTATE:GetCurrentSteps(PLAYER_2)
        self:SetFromRadarValues( PlayerTwoSteps:GetRadarValues(PLAYER_2) )
    end
}
```

{{<toc>}}

## Attributes

There are no special attributes for this actor class. It inherits the attributes from [ActorFrame](../actorframe/#attributes).

## Loaded Metrics

The GrooveRadar uses the following metrics for settings:

```ini
[GrooveRadar]
# How thick should the edges of the radar be?
EdgeWidth=2
# How opaque should the color base of the radar be?
CenterAlpha=0.25
# These define what should be done with each player's part of the graph.
# By default, these are used to color the individual players.
RadarValueMapP1OnCommand=diffuse,PlayerColor(PLAYER_1)
RadarValueMapP2OnCommand=diffuse,PlayerColor(PLAYER_2)
```

## Functions

### `SetFromRadarValues`
`(PlayerNumber player, RadarValues data)`

Sets the data for the GrooveRadar from a chart's RadarValues. These values are generated data when saving the chart which precalculate information like jump intensity, chaos charting, ammount of holds, etc.

If RadarValues is nil, it will perform the same action as [`SetEmpty`](#setempty).

{{<hint>}}
You can obtain a chart's RadarValues by running `GetRadarValues` for a player's steps.
<!-- TODO: Make a wiki page for Steps functions before adding this in! -->
<!-- For more information as to why GetRadarValues requires the PlayerNumber again, check [`GetRadarValues`](). -->
```lua
local chart = GAMESTATE:GetCurrentSteps(PLAYER_1)
-- Get the values
self:SetFromRadarValues( chart:GetRadarValues(PLAYER_1) )
```
{{</hint>}}

### `SetFromValues`
`(PlayerNumber player, {number val1, number val2, number val3, number val4, number val5})`

Allows you to insert custom data into the GrooveRadar. This requires 5 numbers which (usually) correspond to the following categories:

- Stream
- Voltage
- Air
- Freeze
- Chaos

{{<hint type="important">}}
It is suggested to limit the values here to be from 0 to 1. The radar is not clamped to these limits when using SetFromValues, so higher values can make the radar
draw outside of its intended area.
{{</hint>}}

{{<hint>}}
Internally, these are just indexed in a number form, they do not follow a fixed category, so you can name these by using the graphics required for the GrooveRadar.
{{</hint>}}

If the values table isn't table or is nil, it will perform the same action as [`SetEmpty`](#setempty).

### `SetEmpty`
`(PlayerNumber player)`

Clears out the information from the GrooveRadar for a specific `player`.
