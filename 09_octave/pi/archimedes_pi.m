 % Archimedes method to approximate pi
function pi_archimedes = archimedes_pi(num_sides)
    angle = pi / num_sides;
    half_side = sin(angle / 2);
    pi_archimedes = num_sides * half_side;
end
