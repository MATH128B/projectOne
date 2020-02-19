% computes orb(0) and if the Julia Set is connected or not
function compute_orb(phi)
    zk = 0;
    n = 0; 
    while (n < 100) & (abs(zk)<100)
        n = n + 1; % counts the number of iterations
        zki = phi(zk); % iterates the julia set
        diff = zki-zk; % calculates difference between the two iterations
        if diff < (10^(-6)) % if z converges then julia set is connected
            display('Julia Set is connected.')
            return
        end
        zk = zki;
    end
    if n >= 100 % if set doesn't converge after 100 iterations but it is still bounded
        display('Point does not converge but remains bounded. Julia Set is connected.')
    else % set diverges
        display('Orbit is unbounded after %f iterations. Julia Set is not connected.',n)
    end
end