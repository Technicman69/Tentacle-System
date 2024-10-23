# Technicman's Incredible Tentacle System
A system that implements tentacle psychics using datapack `.mcfunction`. Suitable for making Origin mod datapacks with tentacle-like powers.
### Avaible examples
- **Tentacles (default)** - A simple example with power, that gives the player 6 tentacles that attack all the living entities in range
- **Omni-Gazer 2.0** - A close to original __recreation__ of a origin made by youtuber NotPog (that for some reason, was not posted by him). Most of its functionality was taken from the latest version uploaded by him (before the **2.0**). Just like the original, it implements the power called `terror tendrills` that spawn 6 tentacles attacking anything alive in range simutenously.
### Frequently faced problems
- **P:** *When I activate the terror tendrils on a server, I can see the circle animation, but the tentacles don't appear*<br>
**S:** It's likely that there are errors (specifying a path to a non-existent function) in `function tags` in other datapacks. One solution to this problem would be deleting them from these other datapacks (`data/minecraft/tags/functions`, `tick.json` and `load.json`). You can find out whether a datapack is problematic, by temporarily disabling it with `/datapack disable` command and then checking if the tentacles work correcly now.