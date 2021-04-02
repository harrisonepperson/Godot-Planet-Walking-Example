# Godot v3.2.3.stable.official Planet Surface Walking Example

I'm working on a game where the player should walk along the surface of a single planet.  This sample demonstrates my intended behavior using Raycast feet and crude logic, but I would like to build out this behaviour with a kinematic body character and a gravity based planet.

## Specific behaviours this sample exhibits

1. The camera is always pointing toward the center of the planet
2. The direction the character is perceived to move always follows a great circle about the circumference of the sphere.  That is to say if you go to the North Pole and go left the character will move 'South' and not orbit about an axis through the poles.
3. Accurate collisions of objects upon the planet's surface

Thanks to comments in [this reddit thread](https://www.reddit.com/r/godot/comments/mimtd0/working_on_a_game_where_a_character_moves_about/) I was able to achieve a smooth effect using a kinematic character instead of relying upon naive planet rotation and raycasting.

