# particleslogic
A prolog application of basic interactions between elementary particles.

# Prerequisites

You're expected to have GnuProlog or SWI-Prolog installed.

On Ubuntu:

`sudo apt-get install gprolog` 

or

`sudo apt-get install swi-prolog`

# How to use the library

## Consulting the knowledge base

### First example
Inside from the prolog REPL(gnuprolot or SWI-prolog):

`?- consult('particles.pl').`

Now, let's say that you want to find out the mass of the electron. You'll type:

`?- mass(electron, X).`

And you'll get:

`X = 0.511.`

### Second example

Let's say that you want to find the lifetime of all the particles.

You'll type:

```
- lifetime(X, Y).
X = electron,
Y = 'Stable' ;
X = electron_neutrino,
Y = 'Stable' ;
X = muon,
Y = 2.19e-6 ;
X = muon_neutrino,
Y = 'Stable'.
```

# Bibliography
* Prolog programming for artificial intelligence, Ivan Bratko, Addison Wesley, Year: 2001, ISBN: 9780201403756, 0201403757
* Modern physics, Raymond A. Serway, Clement J. Moses, Curt A. Moyer, Thomson Brooks Cole, Year: 2005, ISBN: 9780534493394,0534493394
* [PROLOG Facts, Rules and Queries](http://www.cs.trincoll.edu/~ram/cpsc352/notes/prolog/factsrules.html)
