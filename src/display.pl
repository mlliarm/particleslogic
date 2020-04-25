print_info(X) :-
    write('----------'),
    write('\n'),
    write('Name: '), write(X),
    write('\n'),
    mass(X, Mass),
    write('Mass: '), write(Mass),write(' Mev/c^2'),
    write('\n'),
    charge(X, Charge),
    write('Charge: '), write(Charge),
    write('\n'),
    spin(X, Spin),
    write('Spin: '), write(Spin),
    write('\n'),
    write('----------').
    
