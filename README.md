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
* electron (![\large e^{-}](https://render.githubusercontent.com/render/math?math=%5Clarge%20e%5E%7B-%7D))
* positron (![\large e^{+}](https://render.githubusercontent.com/render/math?math=%5Clarge%20e%5E%7B%2B%7D))
* electron_neutrino (![\large \nu_e](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cnu_e))
* anti_electron_neutrino (![\large \bar{\nu}_e](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5Cnu%7D_e))
* muon (![\large \mu^{-}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cmu%5E%7B-%7D))
* anti_muon (![\large \mu^{+}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cmu%5E%7B%2B%7D))
* muon_neutrino (![\large \nu_{\mu}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cnu_%7B%5Cmu%7D))
* anti_muon_neutrino (![\large \bar{\nu}_{\mu}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5Cnu%7D_%7B%5Cmu%7D))
* tau (![\large \tau^{-}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Ctau%5E%7B-%7D))
* anti_tau (![\large \tau^{+}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Ctau%5E%7B%2B%7D))
* tau_neutrino (![\large \nu_\tau](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cnu_%5Ctau))
* anti_tau_neutrino (![\large \bar{\nu}_\tau](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5Cnu%7D_%5Ctau))

### Hadrons
#### Mesons
* pion (![\large \pi^{+}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cpi%5E%7B%2B%7D))
* anti_pion (![\large \pi^{-}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cpi%5E%7B-%7D))
* pion0 (![\large \pi^{0}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cpi%5E%7B0%7D))
* kaon (![\large \Kappa^{+}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CKappa%5E%7B%2B%7D))
* anti_kaon (![\large \Kappa^{-}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CKappa%5E%7B-%7D))
* kaon_s0 (![\large \Kappa^{0}_{S}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CKappa%5E%7B0%7D_%7BS%7D))
* anti_kaon_s0 (![\large \bar{\Kappa}^{0}_{S}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5CKappa%7D%5E%7B0%7D_%7BS%7D))
* kaon_l0 (![\large \Kappa^{0}_{L}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CKappa%5E%7B0%7D_%7BL%7D))
* anti_kaon_l0 (![\large \bar{\Kappa}^{0}_{L}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5CKappa%7D%5E%7B0%7D_%7BL%7D))
* eta (![\large \eta](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Ceta))
* eta1 (![\large \eta^{'}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Ceta%5E%7B'%7D))

#### Baryons
* proton (![\large p](https://render.githubusercontent.com/render/math?math=%5Clarge%20p))
* anti_proton (![\large \bar{p}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7Bp%7D))
* neutron (![\large n](https://render.githubusercontent.com/render/math?math=%5Clarge%20n))
* lambda (![\large \Lambda^{0}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CLambda%5E%7B0%7D))
* anti_lambda (![\large \bar{\Lambda}^{0}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5CLambda%7D%5E%7B0%7D))
* sigma (![\large \Sigma^{+}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CSigma%5E%7B%2B%7D))
* anti_sigma (![\large \bar{\Sigma}^{-}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5CSigma%7D%5E%7B-%7D))
* sigma0 (![\large \Sigma^{0}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CSigma%5E%7B0%7D))
* anti_sigma0 (![\large \bar{\Sigma}^{0}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5CSigma%7D%5E%7B0%7D))
* sigma_minus (![\large \Sigma^{-}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CSigma%5E%7B-%7D))
* anti_sigma_minus (![\large \bar{\Sigma}^{+}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5CSigma%7D%5E%7B%2B%7D))
* delta (![\large \Delta^{++}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CDelta%5E%7B%2B%2B%7D))
* anti_delta (![\large \bar{\Delta}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5CDelta%7D))
* delta_plus (![\large \Delta^{+}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CDelta%5E%7B%2B%7D))
* anti_delta_plus (![\large \bar{\Delta}^{-}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5CDelta%7D%5E%7B-%7D))
* delta0 (![\large \Delta^{0}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CDelta%5E%7B0%7D))
* anti_delta0 (![\large \bar{\Delta}^{0}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5CDelta%7D%5E%7B0%7D))
* delta_minus (![\large \Delta^{-}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CDelta%5E%7B-%7D))
* anti_delta_minus (![\large \bar{\Delta}^{+}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5CDelta%7D%5E%7B%2B%7D))
* xi0 (![\large \Xi^{0}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CXi%5E%7B0%7D))
* anti_xi0 (![\large \bar{\Xi}^{0}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7B%5CXi%7D%5E%7B0%7D))
* xi_minus (![\large \Xi^{-}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CXi%5E%7B-%7D))
* anti_xi_minus (![\large \Xi^{+}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CXi%5E%7B%2B%7D))
* omega (![\large \Omega^{-}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5COmega%5E%7B-%7D))
* anti_omega (![\large \Omega^{+}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5COmega%5E%7B%2B%7D))

### Quarks
* up (![\large u](https://render.githubusercontent.com/render/math?math=%5Clarge%20u))
* anti_up (![\large \bar{u}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7Bu%7D))
* down (![\large d](https://render.githubusercontent.com/render/math?math=%5Clarge%20d))
* anti_down (![\large \bar{d}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7Bd%7D))
* strange (![\large s](https://render.githubusercontent.com/render/math?math=%5Clarge%20s))
* anti_strange (![\large \bar{s}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7Bs%7D))
* charm (![\large c](https://render.githubusercontent.com/render/math?math=%5Clarge%20c))
* anti_charm (![\large \bar{c}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7Bc%7D))
* bottom (![\large b](https://render.githubusercontent.com/render/math?math=%5Clarge%20b))
* anti_bottom (![\large \bar{b}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7Bb%7D))
* top (![\large t](https://render.githubusercontent.com/render/math?math=%5Clarge%20t))
* anti_top (![\large \bar{t}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cbar%7Bt%7D))

### Gauge Bosons
* photon (![\large \gamma](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5Cgamma))
* gluon (![\large g](https://render.githubusercontent.com/render/math?math=%5Clarge%20g))
* z0_boson (![\large \Zeta^{0}](https://render.githubusercontent.com/render/math?math=%5Clarge%20%5CZeta%5E%7B0%7D))
* w_plus_boson (![\large W^{+}](https://render.githubusercontent.com/render/math?math=%5Clarge%20W%5E%7B%2B%7D))
* w_minus_boson (![\large W^{-}](https://render.githubusercontent.com/render/math?math=%5Clarge%20W%5E%7B-%7D))

### Scalar Boson
* higgs (![\large H^{0}](https://render.githubusercontent.com/render/math?math=%5Clarge%20H%5E%7B0%7D))

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
* [A hack for showing LaTeX formulas in GitHub markdown.md](https://gist.github.com/a-rodin/fef3f543412d6e1ec5b6cf55bf197d7b)

# Contributing
Kindly do see [CONTRIBUTING](https://github.com/mlliarm/particleslogic/blob/master/CONTRIBUTING.md) and [CODE OF CONDUCT](https://github.com/mlliarm/particleslogic/blob/master/CODE_OF_CONDUCT.md) for more information.

# License
![](https://github.com/mlliarm/particleslogic/blob/master/images/gplv3.png)
