# particleslogic
A prolog application of basic interactions between elementary particles.

# Purpose

The main idea behind this project is to create a system that will tell you when an interaction
of the form  `A + B --> C + D + E + ...` or a decay of the form `A --> B + C + D + ...`, where A, B, C, D, E are elementary particles, is possible or not.

For the time being, you can consult the knowledge base, do basic simple (or filtered) queries, and check if an interaction or decay is possible at a higher level.
When I say a higher level, I mean that I'm not taking into account the quarks, nor the quantum numbers such as strangeness, topness, botomness and charm.

You can check [here](https://github.com/mlliarm/particleslogic/blob/master/docs/list_of_possible_interactions.md) the interactions and decays that pass or don't pass the tests with this library, and [here](https://github.com/mlliarm/particleslogic/blob/master/docs/list_of_possible_interactions_queries.md) the queries.

For future ideas and goals check the [CONTRIBUTING](https://github.com/mlliarm/particleslogic/blob/master/CONTRIBUTING.md) page.

# Prerequisites

You're expected to have GnuProlog or SWI-Prolog installed.

On Ubuntu:

`sudo apt install gprolog` 

or

`sudo apt install swi-prolog`

# How to use the library

## Consulting the knowledge base

### First example
Go inside the particleslogic folder from a terminal and get a Prolog REPL running.

From inside the prolog REPL (`gprolog` or `swipl`):

`?- consult('src/particles.pl').`

Now, let's say that you want to find out the mass of the electron. You'll type:

`?- mass(electron, M).`

And you'll get:

`M = 0.511.`

### Second example

Let's say that you want to find the lifetime of all the particles.

You'll type:

`?- lifetime(Particle, Lifetime).`

And you'll get (it will stop when the base runs out of particles, or when you press "." or enter instead of ";"):

```
Particle = electron,
Lifetime = 'Stable' ;
Particle = positron,
Lifetime = 'Stable' ;
Particle = electron_neutrino,
Lifetime = 'Stable' ;
Particle = anti_electron_neutrino,
Lifetime = 'Stable' ;
Particle = muon,
Lifetime = 2.19e-6 ;
Particle = anti_muon,
Lifetime = 2.19e-6 ;
Particle = muon_neutrino,
Lifetime = 'Stable' ;
Particle = tau,
Lifetime = 3.3e-13 .
```

### Third example

Querying and filtering the database:

Let's say that you want to find all the particles with mass greater than 30 MeV/c^2 and less than 200 MeV/c^2:

`?- mass(Particle, Mass), Mass > 30, Mass < 200.`

Then we get:

```
Particle = muon,
Mass = 105.7 ;
Particle = anti_muon,
Mass = 105.7 ;
Particle = pion,
Mass = 139.6 ;
Particle = anti_pion,
Mass = 139.6 ;
Particle = pion0,
Mass = 135.0 ;
Particle = strange,
Mass = 95 ;
Particle = anti_strange,
Mass = 95 ;
false.
```

## Checking if an interaction or decay is possible

### Interactions

First you'll have to load the `laws.pl` library:

```
?- consult('src/laws.pl').
```
Then, to check say the interaction `electron + positron --> photon + photon ` you type in the REPL:

```
?- possible_interaction_first_level([electron, positron], [photon,photon]).
true.
```

### Decays

Once you have loaded the `laws.pl` library you can check if a decay is possible:

For example, let's check the `muon` decay: `muon --> electron + muon_neutrino + anti_electron_neutrino` if it is possible:

```
?- possible_interaction_first_level([muon], [electron, muon_neutrino, anti_electron_neutrino]).
true.
```

## Particles included

Particle name (symbol)

### Leptons
* electron (e-)
* positron (e+)
* electron_neutrino (ν_e)
* anti_electron_neutrino (anti ν_e)
* muon (μ-)
* anti_muon (μ+)
* muon_neutrino (ν_μ)
* anti_muon_neutrino (anti ν_μ)
* tau (τ-)
* anti_tau (τ+)

### Hadrons
#### Mesons
* pion (π+)
* anti_pion (π-)
* pion0 (π0)
* kaon (Κ+)
* anti_kaon (K-)
* kaon_s0 (K_S^0)
* anti_kaon_s0 (anti K_S^0)
* kaon_l0 (K_L^0)
* anti_kaon_l0 (anti K_L^0)
* eta (η)
* eta1 (η')

#### Baryons
* proton (p)
* anti_proton (anti p)
* neutron (n)
* lambda (Λ^0)
* anti_lambda (anti Λ^0)
* sigma (Σ+)
* anti_sigma (anti Σ-)
* sigma0 (Σ^0)
* anti_sigma0 (anti Σ^0)
* sigma_minus (Σ-)
* anti_sigma_minus (anti Σ+)
* delta (Δ++)
* anti_delta (anti Δ)
* delta_plus (Δ+)
* anti_delta_plus (anti Δ-)
* delta0 (Δ^0)
* anti_delta0 (anti Δ^0)
* delta_minus (Δ-)
* anti_delta_minus (anti Δ+)
* xi0 (Ξ^0)
* anti_xi0 (anti Ξ^0)
* xi_minus (Ξ-)
* anti_xi_minus (anti Ξ+)
* omega (Ω-)
* anti_omega (Ω+)

### Quarks
* up (u)
* anti_up (anti u)
* down (d)
* anti_down (anti d)
* strange (s)
* anti_strange (anti s)
* charm (c)
* anti_charm (anti c)
* bottom (b)
* anti_bottom (anti b)
* top (t)
* anti_top (anti t)

### Gauge Bosons
* photon (γ)
* gluon (g)
* z0_boson (Z^0)
* w_plus_boson (W+)
* w_minus_boson (W-)

### Scalar Boson
* higgs (H^0)

# Bibliography
* Ivan Bratko, Prolog programming for artificial intelligence, Addison Wesley, Year: 2001, ISBN: 9780201403756, 0201403757
* Raymond A. Serway, Clement J. Moses, Curt A. Moyer, Modern physics, Thomson Brooks Cole, Year: 2005, ISBN: 9780534493394, 0534493394
* [PROLOG Facts, Rules and Queries](http://www.cs.trincoll.edu/~ram/cpsc352/notes/prolog/factsrules.html)
* O. Raggos, Logical programming and Prolog, greek notes [(rarred pdfs)](http://www.math.upatras.gr/~ragos/main_files/LP.rar), University of Patras, 2013
* John Malpas, PROLOG: A Relational Language and Its Applications, Prentice-Hall, Year: 1987, ISBN: 978-0137308057, 0137308051
* David Griffiths, Introduction to Elementary Particles, Willey-VCH, Year:2008, ISBN:978-3527406012, 9783527406012
* Jun John Sakurai, Invariance Principles and Elementary Particles, Princeton University Press, Year: 1964

# References
* [Wikipedia: Particle Decay](https://en.wikipedia.org/wiki/Particle_decay)
* [Wikipedia: Standard Model](https://en.wikipedia.org/wiki/Standard_Model)
* [Wikipedia: Antiparticle](https://en.wikipedia.org/wiki/Antiparticle)
* [Wikipedia: List of Particles](https://en.wikipedia.org/wiki/List_of_particles)
* [Wikipedia: Fermion](https://en.wikipedia.org/wiki/Fermion)
* [Wikipedia: Boson](https://en.wikipedia.org/wiki/Boson)
* [Wikipedia: List of mesons](https://en.wikipedia.org/wiki/List_of_mesons)
* [Wikipedia: Quarks#Mass](https://en.wikipedia.org/wiki/Quark#Mass)
* [Physics.stackexchange: Can we talk on the conservation of spin?](https://physics.stackexchange.com/questions/325905/can-we-talk-on-the-conservation-of-spin)
* [Physicsworld.com: The spin of a proton](https://physicsworld.com/a/the-spin-of-a-proton/)
* [Particle zoo: the W boson](https://images-of-elements.com/particle-zoo/w-boson.php)
* [Particle zoo: the Z0 boson](https://images-of-elements.com/particle-zoo/z-boson.php)
* [Particle zoo: the gluon](https://images-of-elements.com/particle-zoo/gluon.php)
* [Particle zoo: the strange quark](https://images-of-elements.com/particle-zoo/strange-quark.php#a)
* [Particle zoo: the charm quark](https://images-of-elements.com/particle-zoo/charm-quark.php#a)
* [Particle zoo: the bottom quark](https://images-of-elements.com/particle-zoo/bottom-quark.php#a)
* [Particle zoo: the top quark](https://images-of-elements.com/particle-zoo/top-quark.php#a)
* [HyperPhysics: Particle Interactions and Conservation Laws](http://hyperphysics.phy-astr.gsu.edu/hbase/Particles/parint.html)
* [Physics LibreTexts: Particle Conservation Laws](https://phys.libretexts.org/Bookshelves/University_Physics/Book%3A_University_Physics_(OpenStax)/Map%3A_University_Physics_III_-_Optics_and_Modern_Physics_(OpenStax)/11%3A_Particle_Physics_and_Cosmology/11.03%3A_Particle_Conservation_Laws)
* [Particle Data Group](http://pdg.lbl.gov/index.html)
* [Physics.stackexchange: Adding three electron spins](https://physics.stackexchange.com/questions/29443/adding-3-electron-spins)
* [Markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

# Contributing
Kindly do see [CONTRIBUTING](https://github.com/mlliarm/particleslogic/blob/master/CONTRIBUTING.md) and [CODE OF CONDUCT](https://github.com/mlliarm/particleslogic/blob/master/CODE_OF_CONDUCT.md) for more information.

# License
![](https://github.com/mlliarm/particleslogic/blob/master/images/gplv3.png)
