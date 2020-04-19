% Rules that correspond to conservation laws of Physics.
%
% Conservation of energy
% Conservation of charge
% Conservation of leptonic numbers 
% Conservation of baryonic number
% Conservation of strangeness
% Conservation of spin

% 1) Conservation of energy

% 2) Conservation of charge
% The In is a list with the input particles, 
% example: [proton, neutron]
%
% The Out is a list with the output particles,
% example: [proton,proton,neutron,anti_proton].
total_charge([], 0).
total_charge([P_head|P_tail], Total_charge) :-
     charge(P_head, C_head),
     total_charge(P_tail, C_tail),
     Total_charge is C_head + C_tail.

cons_of_charge(In, Out) :-
     total_charge(In, Charge_in),
     total_charge(Out, Charge_out),
     Charge_in == Charge_out.

% 3) Conservation of leptonic number l_e
%
% Example of valid reaction:
%
% neutron --> proton + electron + anti_electron_neutrino
%
% In = [neutron]
% Out = [proton, electron + anti_electron_neutrino]
total_electron_leptonic_number([], 0).
total_electron_leptonic_number([P_head|P_tail], Total_le) :-
    l_e(P_head, Le_head),
    total_electron_leptonic_number(P_tail, Le_tail),
    Total_le is Le_head + Le_tail.

cons_of_electron_leptonic_number(In, Out) :-
    total_electron_leptonic_number(In, Le_in),
    total_electron_leptonic_number(Out, Le_out),
    Le_in == Le_out.

% 4) Conservation of leptonic number l_mu
total_muon_leptonic_number([], 0).
total_muon_leptonic_number([P_head|P_tail], Total_lmu) :-
    l_mu(P_head, Lmu_head),
    total_muon_leptonic_number(P_tail, Lmu_tail),
    Total_lmu is Lmu_head + Lmu_tail.

cons_of_muon_leptonic_number(In, Out) :-
    total_muon_leptonic_number(In, Lmu_in),
    total_muon_leptonic_number(Out, Lmu_out),
    Lmu_in == Lmu_out.

% 5) Conservation of leptonic number l_tau


% 6) Conservation of baryonic number B


% 7) Conservation of strangeness S


% 8) Conservation of spin
