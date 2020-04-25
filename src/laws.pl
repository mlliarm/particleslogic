% Rules that correspond to conservation laws of Physics.
%
% Conservation of energy
% Conservation of charge
% Conservation of leptonic numbers 
% Conservation of baryonic number
% Conservation of strangeness
% Conservation of spin

% 1) Conservation of energy (mass)
%
% Total mass (energy) of input particles should be always greater than the total mass (energy) of the output particles
total_mass([], 0).
total_mass([P_head|P_tail], Total_mass) :-
    mass(P_head, Mass_head),
    total_mass(P_tail, Mass_tail),
    Total_mass is Mass_head + Mass_tail.

cons_of_mass(In, Out) :-
    total_mass(In, Mass_in),
    total_mass(Out, Mass_out),
    Mass_in > Mass_out.

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
total_tau_leptonic_number([], 0).
total_tau_leptonic_number([P_head|P_tail], Total_ltau) :-
    l_tau(P_head, Ltau_head),
    total_tau_leptonic_number(P_tail, Ltau_tail),
    Total_ltau is Ltau_head + Ltau_tail.

cons_of_tau_leptonic_number(In, Out) :-
    total_tau_leptonic_number(In, Ltau_in),
    total_tau_leptonic_number(Out, Ltau_out),
    Ltau_in == Ltau_out.

% 6) Conservation of baryon number B
total_baryon_number([], 0).
total_baryon_number([P_head|P_tail], Total_B) :-
    baryon_number(P_head, B_head),
    total_baryon_number(P_tail, B_tail),
    Total_B is B_head + B_tail.

cons_of_baryon_number(In, Out) :-
    total_baryon_number(In, B_in),
    total_baryon_number(Out, B_out),
    B_in == B_out.

% 7) Conservation of strangeness S
total_strangeness([], 0).
total_strangeness([P_head|P_tail], Total_S) :-
    strangeness(P_head, S_head),
    total_strangeness(P_tail, S_tail),
    Total_S is S_head + S_tail.

cons_of_strangeness(In, Out) :-
    total_strangeness(In, S_in),
    total_strangeness(Out, S_out),
    S_in == S_out.

% 8) Conservation of spin
%
% First we create some helping predicates to calculate the spin for interactions
/**
minimum_spin([], 0).
minimum_spin([P_head|P_tail], Min_spin) :-
    spin(P_head, Spin_head),
    minimum_spin(P_tail, Spin_tail),
    X is Spin_head - Spin_tail,
    Min_spin is rationalize(abs(X)).

maximum_spin([], 0).
maximum_spin([P_head|P_tail], Max_spin) :-
    spin(P_head, Spin_head),
    maximum_spin(P_tail, Spin_tail),
    Max_spin is rationalize(Spin_head + Spin_tail).

total_output_spin(Out, Out_spin) :- 
    maximum_spin(Out, Out_spin).

spin_for_interactions(In, Out) :-
    minimum_spin(In, Min_spin),
    maximum_spin(In, Max_spin),
    total_output_spin(Out, Out_spin),
    Out_spin >= Min_spin,
    Out_spin =< Max_spin.

%Now we calculate the spin for decays
spin_for_decays([P_in|P_out]) :-
    spin(P_in, Spin_in),
    Spin_in2 is rationalize(Spin_in),
    rational(Spin_in2),
    total_output_spin(P_out, Spin_out),
    rational(Spin_out).

spin_for_decays([P_in|P_out]) :-
    spin(P_in, Spin_in),
    integer(Spin_in),
    total_output_spin(P_out, Spin_out),
    integer(Spin_out).

%A helper function because the way the spin for decays predicates take the input
%variables is different.
merge_list([], L, L).
merge_list([H|T], L, [H|M]) :-
    merge_list(T, L, M).

%All together now
%
%If we have only one input particle we use the spin_for_decays
%
%If we have more than one input particles we use the spin_for_interactions.
cons_of_spin(In, Out):-
    (
        length(In, Len_in),
        Len_in =:= 1 ->
        merge_list(In, Out, All_particles),
        spin_for_decays(All_particles),!
    ;   spin_for_interactions(In, Out)
    ).
**/

total_spin([], 0).
total_spin([P_head|P_tail], Total_spin) :-
    spin(P_head, Spin_head),
    total_spin(P_tail, Spin_tail),
    Total_spin is rationalize(Spin_head + Spin_tail).

cons_of_spin(In, Out) :-
    total_spin(In, Spin_in),
    total_spin(Out, Spin_out),
    integer(Spin_in),
    integer(Spin_out).

cons_of_spin(In, Out) :-
    total_spin(In, Spin_in),
    total_spin(Out, Spin_out),
    not(integer(Spin_in)),
    not(integer(Spin_out)).

% 9) Is the interaction possible?
%
possible_interaction_first_level(In, Out) :-
    cons_of_mass(In, Out),
    cons_of_charge(In, Out),
    cons_of_electron_leptonic_number(In, Out),
    cons_of_muon_leptonic_number(In, Out),
    cons_of_tau_leptonic_number(In, Out),
    cons_of_baryon_number(In, Out),
    cons_of_spin(In, Out).
