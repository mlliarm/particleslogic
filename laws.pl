% Rules that correspond to conservation laws of Physics.
%
% Conservation of energy
% Conservation of charge
% Conservation of leptonic numbers 
% Conservation of baryonic number
% Conservation of strangeness

% Some useful rules
last([X], X).
last([_|T], X) :- last(T, X).

% 1) Conservation of energy


% 2) Conservation of charge
% The Input_particles is a list with the input particles, 
% example: [proton, neutron]
%
% The Output_particles is a list as well with the output particles,
% example: [proton,proton,neutron,anti_proton].
%
% We want to create a rule that checks the followings:
% if the sum of the charges of the input particles equals 
% the sum of the charges of the output particles.
%
% Sketch of implementation:
% a) Get the first/last element from the Input_particles list
% b) Get the first/last element from the Output_particles list
% c) Calculate sum of charges of input particles recursively
% d) Calculate sum of charges of output particles recursively
% e) Check if those two values are equal
% f) Recurse the charge_is_conserved relation so that you get all the particles
% from each list.

% 3) Conservation of leptonic number l_e


% 4) Conservation of leptonic number l_mu


% 5) Conservation of leptonic number l_tau


% 6) Conservation of baryonic number B


% 7) Conservation of strangeness S
