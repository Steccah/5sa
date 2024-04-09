% Krebs algorithm to approximate pi
function pi_krebs = krebs_pi(iterations)
    a = 1;
    b = 1 / sqrt(2);
    t = 1/4;
    p = 1;

    for i = 1:iterations
        a_next = (a + b) / 2;
        b = sqrt(a * b);
        t -= p * (a - a_next)^2;
        a = a_next;
        p *= 2;
    end

    pi_krebs = (a + b)^2 / (4 * t);
end
