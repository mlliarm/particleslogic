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
Inside from the prolog REPL (gprolog or SWI-prolog):

`?- consult('particles.pl').`

Now, let's say that you want to find out the mass of the electron. You'll type:

`?- mass(electron, X).`

And you'll get:

`X = 0.511.`

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
* higgs (H^0)
* photon (γ)
* gluon (g)
* z0_boson (Z^0)
* w_plus_boson (W+)
* w_minus_boson (W-)

# Bibliography
* Prolog programming for artificial intelligence, Ivan Bratko, Addison Wesley, Year: 2001, ISBN: 9780201403756, 0201403757
* Modern physics, Raymond A. Serway, Clement J. Moses, Curt A. Moyer, Thomson Brooks Cole, Year: 2005, ISBN: 9780534493394,0534493394
* [PROLOG Facts, Rules and Queries](http://www.cs.trincoll.edu/~ram/cpsc352/notes/prolog/factsrules.html)
* Logical programming and Prolog, greek notes [(rarred pdfs)](http://www.math.upatras.gr/~ragos/main_files/LP.rar), O. Raggos, University of Patras, 2013

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
* [Markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

# Contributing
Kindly do see [CONTRIBUTING](https://github.com/mlliarm/particleslogic/blob/master/CONTRIBUTING.md) and [CODE OF CONDUCT](https://github.com/mlliarm/particleslogic/blob/master/CODE_OF_CONDUCT.md) for more information.

# License
![](https://github.com/mlliarm/particleslogic/blob/master/images/gplv3.png)
