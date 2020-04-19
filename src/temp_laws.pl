%Various lists
%Experimenting with Prolog.
alist(X,Y,Z) :- charge(electron,X),
         charge(proton,Y),
         charge(tau,Z).

alist2(L) :- alist(X,Y,Z),
             L = [X,Y,Z].

alist3(L) :- L = [electron, proton, tau].

%Not working.
cons_of_charge([In], [Out_head|Out_tail]) :- 
    charge(In, C1),
    charge(Out_head, C2),
    charge(my_head(Out_tail), C3),
    C4 is C2 + C3,
    cons_of_charge(In, Out_tail),
    write(C1), write(C4),
    C1 == C4.

%Not working.
cons_of_charge2([In], [Out_head|Out_tail]) :-
    charge(In,C1),
    write(C1),
    charge(Out_head,C2),
    write(C2),
    C3 is C2,
    write(C3),
    cons_of_charge2(In, Out_tail),
    C4 is C2 + C3,
    write(C4),
    C1 == C4.

%Not working.
cons_of_charge3([],[],0).
cons_of_charge3([In_head|In_tail],[Out_head|Out_tail],Diff_of_charge) :-
    charge(In_head, C_in),
    write(C_in),
    charge(Out_head, C_out),write(C_out),
    cons_of_charge3(In_tail, Out_tail, Diff_of_charge),
    Diff_of_charge is C_in - C_out,
    write(Diff_of_charge).

%Working properly for interactions of the form A --> B + C + D
%
%Example: neutron --> proton + electron + anti_electron_neutrino.
cons_of_charge4(In,Out1,Out2,Out3) :-
    charge(In,C_in),
    charge(Out1, C_out1),
    charge(Out2, C_out2),
    charge(Out3, C_out3),
    C_out is C_out1 + C_out2 + C_out3,
    C_in == C_out.

%Working
total_charge_of_particles([], 0).
total_charge_of_particles([P_head|P_tail], Total) :-
    charge(P_head, C_head),
    total_charge_of_particles(P_tail, C_tail),
    Total is C_head + C_tail.

cons_of_charge5(In, Out) :-
    total_charge_of_particles(In, Total_in),
    total_charge_of_particles(Out, Total_out),
    Total_in == Total_out.
