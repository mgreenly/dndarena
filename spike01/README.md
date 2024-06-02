# Dndarena

This is sort of a D&D 3.5 (variant) combat simulator.

This is an early throw away spike...

My current thought is that there's only a `Creature` class, there's no distinction between character clases and monsters.

Each `creature` instance is built up with `Feats`, `Abilities`, etc...

To start we'll keep it super simple initially combat will only involve a `base_attack`, `base_defense`, `damge` and creatures would only really need to know `hp`.

`Team`s are created that include multiple `Creature`s.

The `Team`s are added to an `Arena`.

A `Simulation` runs the `Arena` many times and gathers statistics.
