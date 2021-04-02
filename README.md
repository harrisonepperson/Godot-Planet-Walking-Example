# Godot v3.2.3.stable.official Planet Surface Walking Example

I'm working on a game where the player should walk along the surface of a single planet.  This sample demonstrates my intended behavior using Raycast feet and crude logic, but I would like to build out this behaviour with a kinematic body character and a gravity based planet.

## Specific behaviours I'd like to produce

1. The camera is always pointing toward the center of the planet
2. The direction the character is perceived to move always follows a great circle about the circumference of the sphere.  That is to say if you go to the North Pole and go left the character will move 'South' and not orbit about an axis through the poles.

## Issues in this sample

1. Moving left or right rotates the planet about a North/South Axis and not migrating the character about a great circle around the circumference
2. Moving too far left or right runs the player into an impassible "date line"
3. Velocity drops dramatically as you approach the poles
4. When at the South Pole changing direction between left or right causes the planet to violently spin (I beleive this has to do with the static UP Vector3() in the look_at fucntion)

## Things I like in this sample

1. The acceleration and decceleration of character movement
2. The much more accurate collsiion detection on planet surface objects (like the box at the North Pole)

Please let me know if you find a way to implement this with rigid/kinematic bodies and not relying on raycast feet.

Thanks :)
