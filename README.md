# Technicman's Incredible Tentacle System
A system that implements tentacle psychics using datapack `.mcfunction`. Suitable for making Origin mod datapacks with tentacle-like powers.
### Avaible examples
- **Tentacles (default)** - A simple example with power, that gives the player 6 tentacles that attack all the living entities in range
- **Omni-Gazer 2.0** - A close to original __recreation__ of a origin made by youtuber NotPog (that for some reason, was not posted by him). Most of its functionality was taken from the latest version uploaded by him (before the **2.0**). Just like the original, it implements the power called `terror tendrills` that spawn 6 tentacles attacking anything alive in range simutenously.
### Frequently faced problems
- **P:** *When I activate the terror tendrils on a server, I can see the circle animation, but the tentacles don't appear*<br>
**S:** It's likely that there are errors (specifying a path to a non-existent function) in `function tags` in other datapacks. One solution to this problem would be deleting them from these other datapacks (`data/minecraft/tags/functions`, `tick.json` and `load.json`). You can find out whether a datapack is problematic, by temporarily disabling it with `/datapack disable` command and then checking if the tentacles work correcly now.
## Usage
### Picking the example Origin
To pick the origin, use the Origin Orb or type this command:
`/origin set @s origins:origin tech:tentacles`
### Basic Overview
Different files are responsible for different things (ofc)
1. Powers
    - `toggle_power.json` is working like a switch, giving you tentacles by giving you `terror_tendrils` power or removing tentacles by removing that power
    - `terror_tendrills` is responsible for: attaching the tentacles to your body, dealing damage to targets and tagging entities in range with the `potential_target` tag (that is self-explanatory)

2. Functions
    - manage scoreboards (each tentacle consists of `nodes` represented by `marker` entities. Each node has `tent_id` and `node_id` scores that differentiate tentacles and nodes in one tentacle accordingly)
    - spawn particles in-between the nodes (`_particle_ray.mcfunction` in `1.20.2` version or `settings/ray_particles.mcfunction` in `1.19` version)
    - choose specific targets from the entities marked by the `terror_tendrils` (`_choose_target.mcfuntion`)
    - make the tip (end) of the target move towards the target (`update.mcfunction`)
    - make the whole tentacle move with move with its tip (by recursively calling `_update_loop.mcfunction` for each node from the tip to base and then from base to tip). The movement consists of 2 parts: first the tip pulling consecutive nodes towards itself, then the base pulling them back, so it stayes attached 
### Usefull functions
You can invoke them by typing: `/function tech:tentacles/<function name here>`
1. `summon` - summon tentacle in this spot facing direction of player. By default it is not attached to the players, so it does not teleport to them, when they move and the tip of the tentacle doesn't move either.
2. `remove` - removes closest tentacle (its base must be in range of 2 blocks, as specified in the function)
### Simple parameter configuration
Most parametes and effects you can find in `tech/functions/tentacles/settings/`:
1. `main` -  specifies node count and distance between those nodes (the second one uses macros, 1.20.2 only)
2. `node_particles` -  and `tent_end_particles` - vfx visible at: nodes, last nodes, and between them. All the commands in these functions are executed at the place of specific nodes.
3. *`ray_particles` - series of commands, that spawn particles along the way from one node to the other (particle count depend on the distance from the base of the tentacle)
### Example
Example origin and power both use functions in `util` folder (you can delete it, if you are not using the example).
Default example consists of: one origin, and one power, that makes 6 tentacles, which target, hit and knockback 6 different enemies.
### Structure of tentacle
As said earlier, single tentacle is a set of `markers`. Each marker has `tent.node` tag. Base of tentacle has `tent.base` tag, end the tip-node of tentacle has `tent.end` tag additionally. Each tentacle node has 2 scores: `tent.uuid`, unique to all tentacles and `tent.node_id` unique to all nodes in a tentacle (base node has `0`, and last node last). More explanations you may find in `load.mcfunction`.