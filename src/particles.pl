%Defining discontiguous predicates
:- discontiguous mass/2.
:- discontiguous baryon_number/2.
:- discontiguous l_e/2.
:- discontiguous l_mu/2.
:- discontiguous l_tau/2.
:- discontiguous strangeness/2.
:- discontiguous charge/2.
:- discontiguous spin/2.
:- discontiguous lifetime/2.
:- discontiguous fermion/1.
:- discontiguous charm/2.
:- discontiguous botomness/2.
:- discontiguous strangeness/2.
:- discontiguous bottomness/2.
:- discontiguous topness/2.
:- discontiguous colour_charge/2.
:- discontiguous boson/1.

%LEPTONS
mass(electron, 0.511).
baryon_number(electron, 1).
l_e(electron, 1).
l_mu(electron, 0).
l_tau(electron, 0).
strangeness(electron, 0).
charge(electron, -1).
spin(electron, 1/2).
lifetime(electron, 'Stable').
fermion(electron).

mass(positron, 0.511).
baryon_number(positron, 1).
l_e(positron, 1).
l_mu(positron, 0).
l_tau(positron, 0).
strangeness(positron, 0).
charge(positron, 1).
spin(positron, 1/2).
lifetime(positron, 'Stable').
fermion(positron).

mass(electron_neutrino, 2.8E-6).
baryon_number(electron_neutrino, 0).
l_e(electron_neutrino, 1).
l_mu(electron_neutrino, 0).
l_tau(electron_neutrino, 0).
strangeness(electron_neutrino, 0).
charge(electron_neutrino, 0).
spin(electron_neutrino, 1/2).
lifetime(electron_neutrino,'Stable').
fermion(electron_neutrino).

mass(anti_electron_neutrino, 2.8E-6).
baryon_number(anti_electron_neutrino, 0).
l_e(anti_electron_neutrino, 1).
l_mu(anti_electron_neutrino, 0).
l_tau(anti_electron_neutrino, 0).
strangeness(anti_electron_neutrino, 0).
charge(anti_electron_neutrino, 0).
spin(anti_electron_neutrino, 1/2).
lifetime(anti_electron_neutrino,'Stable').
fermion(anti_electron_neutrino).

mass(muon, 105.7).
baryon_number(muon, 0).
l_e(muon, 0).
l_mu(muon, 1).
l_tau(muon, 0).
strangeness(muon, 0).
charge(muon, -1).
spin(muon, 1/2).
lifetime(muon, 2.19E-6).
fermion(muon).

mass(anti_muon, 105.7).
baryon_number(anti_muon, 0).
l_e(anti_muon, 0).
l_mu(anti_muon, 1).
l_tau(anti_muon, 0).
strangeness(anti_muon, 0).
charge(anti_muon, 1).
spin(anti_muon, 1/2).
lifetime(anti_muon, 2.19E-6).
fermion(anti_muon).

mass(muon_neutrino, 3.5E-6).
baryon_number(muon_neutrino, 0).
l_e(muon_neutrino, 0).
l_mu(muon_neutrino, 1).
l_tau(muon_neutrino, 0).
strangeness(muon_neutrino, 0).
charge(muon_neutrino, 0).
spin(muon_neutrino, 1/2).
lifetime(muon_neutrino,'Stable').
fermion(muon_neutrino).

mass(anti_muon_neutrino, 3.5E-6).
baryon_number(anti_muon_neutrino, 0).
l_e(anti_muon_neutrino, 0).
l_mu(anti_muon_neutrino, 1).
l_tau(anti_muon_neutrino, 0).
strangeness(anti_muon_neutrino, 0).
charge(anti_muon_neutrino, 0).
spin(anti_muon_neutrino, 1/2).
lifetime(anti_muon_neutrino,'Stable').
fermion(anti_muon_neutrino).

mass(tau, 1784).
baryon_number(tau, 0).
l_e(tau, 0).
l_mu(tau, 0).
l_tau(tau, 1).
strangeness(tau, 0).
charge(tau, -1).
spin(tau, 1/2).
lifetime(tau, 3.3E-13).
fermion(tau).

mass(anti_tau, 1784).
baryon_number(anti_tau, 0).
l_e(anti_tau, 0).
l_mu(anti_tau, 0).
l_tau(anti_tau, 1).
strangeness(anti_tau, 0).
charge(anti_tau, 1).
spin(anti_tau, 1/2).
lifetime(anti_tau, 3.3E-13).
fermion(anti_tau).

mass(tau_neutrino, 8.4E-6).
baryon_number(tau_neutrino, 0).
l_e(tau_neutrino, 0).
l_mu(tau_neutrino, 0).
l_tau(tau_neutrino, 1).
strangeness(tau_neutrino, 0).
charge(tau_neutrino, 0).
spin(tau_neutrino, 1/2).
lifetime(tau_neutrino, 'Stable').
fermion(tau_neutrino).

mass(anti_tau_neutrino, 8.4E-6).
baryon_number(anti_tau_neutrino, 0).
l_e(anti_tau_neutrino, 0).
l_mu(anti_tau_neutrino, 0).
l_tau(anti_tau_neutrino, 1).
strangeness(anti_tau_neutrino, 0).
charge(anti_tau_neutrino, 0).
spin(anti_tau_neutrino, 1/2).
lifetime(anti_tau_neutrino, 'Stable').
fermion(anti_tau_neutrino).

%HADRONS
%Mesons
mass(pion, 139.6).
baryon_number(pion, 0).
l_e(pion, 0).
l_mu(pion, 0).
l_tau(pion, 0).
strangeness(pion, 0).
charge(pion, 1).
spin(pion, 0).
lifetime(pion, 2.6E-8).
fermion(pion).

mass(anti_pion, 139.6).
baryon_number(anti_pion, 0).
l_e(anti_pion, 0).
l_mu(anti_pion, 0).
l_tau(anti_pion, 0).
strangeness(anti_pion, 0).
charge(anti_pion, -1).
spin(anti_pion, 0).
lifetime(anti_pion, 2.6E-8).
fermion(anti_pion).

mass(pion0, 135.0).
baryon_number(pion0, 0).
l_e(pion0, 0).
l_mu(pion0, 0).
l_tau(pion0, 0).
strangeness(pion0, 0).
charge(pion0, 0).
spin(pion0, 0).
lifetime(pion0, 0.83E-16).
fermion(pion0).

mass(kaon, 493.7).
baryon_number(kaon, 0).
l_e(kaon, 0).
l_mu(kaon, 0).
l_tau(kaon, 0).
strangeness(kaon, 1).
charge(kaon, 1).
spin(kaon, 0).
lifetime(kaon, 1.24E-8).
fermion(kaon).

mass(anti_kaon, 493.7).
baryon_number(anti_kaon, 0).
l_e(anti_kaon, 0).
l_mu(anti_kaon, 0).
l_tau(anti_kaon, 0).
strangeness(anti_kaon, 1).
charge(anti_kaon, -1).
spin(anti_kaon, 0).
lifetime(anti_kaon, 1.24E-8).
fermion(anti_kaon).

mass(kaon_s0, 497.7).
baryon_number(kaon_s0, 0).
l_e(kaon_s0, 0).
l_mu(kaon_s0, 0).
l_tau(kaon_s0, 0).
strangeness(kaon_s0, 1).
charge(kaon_s0, 0).
spin(kaon_s0, 0).
lifetime(kaon_s0, 0.89E-10).
fermion(kaon_s0).

mass(anti_kaon_s0, 497.7).
baryon_number(anti_kaon_s0, 0).
l_e(anti_kaon0, 0).
l_mu(anti_kaon0, 0).
l_tau(anti_kaon0, 0).
strangeness(anti_kaon0, 1).
charge(anti_kaon0, 0).
spin(anti_kaon0, 0).
lifetime(anti_kaon0, 0.89E-10).
fermion(anti_kaon_s0).

mass(kaon_l0, 497.7).
baryon_number(kaon_l0, 0).
l_e(kaon_l0, 0).
l_mu(kaon_l0, 0).
l_tau(kaon_l0, 0).
strangeness(kaon_l0, 1).
charge(kaon_l0, 0).
spin(kaon_l0, 0).
lifetime(kaon_l0, 5.2E-8).
fermion(kaon_l0).

mass(anti_kaon_l0, 497.7).
baryon_number(anti_kaon_l0, 0).
l_e(anti_kaon_l0, 0).
l_mu(anti_kaon_l0, 0).
l_tau(anti_kaon_l0, 0).
strangeness(anti_kaon_l0, 1).
charge(anti_kaon_l0, 0).
spin(anti_kaon_l0, 0).
lifetime(anti_kaon_l0, 5.2E-8).
fermion(anti_kaon_l0).

mass(eta, 548.8).
baryon_number(eta, 0).
l_e(eta, 0).
l_mu(eta, 0).
l_tau(eta, 0).
strangeness(eta, 0).
charge(eta, 0).
spin(eta, 0).
lifetime(eta, 1E-18).
fermion(eta).

mass(eta1, 958).
baryon_number(eta1, 0).
l_e(eta1, 0).
l_mu(eta1, 0).
l_tau(eta1, 0).
strangeness(eta1, 0).
charge(eta1, 0).
spin(eta1, 0).
lifetime(eta1, 2.2E-21).
fermion(eta1).

%BARYONS
mass(proton, 938.3).
baryon_number(proton, 1).
l_e(proton, 0).
l_mu(proton, 0).
l_tau(proton, 0).
strangeness(proton, 0).
charge(proton, 1).
spin(proton, 1/2).
lifetime(proton, 'Stable').
fermion(proton).

mass(anti_proton, 938.3).
baryon_number(anti_proton, -1).
l_e(anti_proton, 0).
l_mu(anti_proton, 0).
l_tau(anti_proton, 0).
strangeness(anti_proton, 0).
charge(anti_proton, -1).
spin(anti_proton, 1/2).
lifetime(anti_proton, 'Stable').
fermion(anti_proton).

mass(neutron, 939.6).
baryon_number(neutron, 1).
l_e(neutron, 0).
l_mu(neutron, 0).
l_tau(neutron, 0).
strangeness(neutron, 0).
charge(neutron, 0).
spin(neutron, 1/2).
lifetime(neutron, 624).
fermion(neutron).

mass(anti_neutron, 939.6).
baryon_number(anti_neutron, 1).
l_e(anti_neutron, 0).
l_mu(anti_neutron, 0).
l_tau(anti_neutron, 0).
strangeness(anti_neutron, 0).
charge(anti_neutron, 0).
spin(anti_neutron, 1/2).
lifetime(anti_neutron, 624).
fermion(anti_neutron).

mass(lambda, 1115.6).
baryon_number(lambda, 1).
l_e(lambda, 0).
l_mu(lambda, 0).
l_tau(lambda, 0).
strangeness(lambda, -1).
charge(lambda, 0).
spin(lambda, 1/2).
lifetime(lambda, 2.6E-10).
fermion(lambda).

mass(anti_lambda, 1115.6).
baryon_number(anti_lambda, 1).
l_e(anti_lambda, 0).
l_mu(anti_lambda, 0).
l_tau(anti_lambda, 0).
strangeness(anti_lambda, -1).
charge(anti_lambda, 0).
spin(anti_lambda, 1/2).
lifetime(anti_lambda, 2.6E-10).
fermion(anti_lambda).

mass(sigma, 1189.4).
baryon_number(sigma, 1).
l_e(sigma, 0).
l_mu(sigma, 0).
l_tau(sigma, 0).
strangeness(sigma, -1).
charge(sigma, 1).
spin(sigma, 1/2).
lifetime(sigma, 0.8E-10).
fermion(sigma).

mass(anti_sigma, 1189.4).
baryon_number(anti_sigma, 1).
l_e(anti_sigma, 0).
l_mu(anti_sigma, 0).
l_tau(anti_sigma, 0).
strangeness(anti_sigma, -1).
charge(anti_sigma, -1).
spin(anti_sigma, 1/2).
lifetime(anti_sigma, 0.8E-10).
fermion(anti_sigma).

mass(sigma0, 1192.5).
baryon_number(sigma0, 1).
l_e(sigma0, 0).
l_mu(sigma0, 0).
l_tau(sigma0, 0).
strangeness(sigma0, -1).
charge(sigma0, 0).
spin(anti_sigma, 1/2).
lifetime(sigma0, 6E-20).
fermion(sigma0).

mass(anti_sigma0, 1192.5).
baryon_number(anti_sigma0, 1).
l_e(anti_sigma0, 0).
l_mu(anti_sigma0, 0).
l_tau(anti_sigma0, 0).
strangeness(anti_sigma0, -1).
charge(anti_sigma0, 0).
spin(anti_sigma0, 1/2).
lifetime(anti_sigma0, 6E-20).
fermion(anti_sigma0).

mass(sigma_minus, 1197.3).
baryon_number(sigma_minus, 1).
l_e(sigma_minus, 0).
l_mu(sigma_minus, 0).
l_tau(sigma_minus, 0).
strangeness(sigma_minus, -1).
charge(sigma_minus, -1).
spin(sigma_minus, 1/2).
lifetime(sigma_minus, 1.5E-10).
fermion(sigma_minus).

mass(anti_sigma_minus, 1197.3).
baryon_number(anti_sigma_minus, 1).
l_e(anti_sigma_minus, 0).
l_mu(anti_sigma_minus, 0).
l_tau(anti_sigma_minus, 0).
strangeness(anti_sigma_minus, -1).
charge(anti_sigma_minus, 1).
spin(anti_sigma_minus, 1/2).
lifetime(anti_sigma_minus, 1.5E-10).
fermion(anti_sigma_minus).

mass(delta, 1230).
baryon_number(delta, 1).
l_e(delta, 0).
l_mu(delta, 0).
l_tau(delta, 0).
strangeness(delta, 0).
charge(delta, 1).
spin(delta, 1/2).
lifetime(delta, 6E-24).
fermion(delta).

mass(anti_delta, 1230).
baryon_number(anti_delta, 1).
l_e(anti_delta, 0).
l_mu(anti_delta, 0).
l_tau(anti_delta, 0).
strangeness(anti_delta, 0).
charge(anti_delta, -1).
spin(anti_delta, 1/2).
lifetime(anti_delta, 6E-24).
fermion(anti_delta).

mass(delta_plus, 1231).
baryon_number(delta_plus, 1).
l_e(delta_plus, 0).
l_mu(delta_plus, 0).
l_tau(delta_plus, 0).
strangeness(delta_plus, 0).
charge(delta_plus, 1).
spin(delta_plus, 1/2).
lifetime(delta_plus, 6E-24).
fermion(delta_plus).

mass(anti_delta_plus, 1231).
baryon_number(anti_delta_plus, 1).
l_e(anti_delta_plus, 0).
l_mu(anti_delta_plus, 0).
l_tau(anti_delta_plus, 0).
strangeness(anti_delta_plus, 0).
charge(anti_delta_plus, -1).
spin(anti_delta_plus, 1/2).
lifetime(anti_delta_plus, 6E-24).
fermion(anti_delta_plus).

mass(delta0, 1232).
baryon_number(delta0, 1).
l_e(delta0, 0).
l_mu(delta0, 0).
l_tau(delta0, 0).
strangeness(delta0, 0).
charge(delta0, 0).
spin(delta0, 1/2).
lifetime(delta0, 6E-24).
fermion(delta0).

mass(anti_delta0, 1232).
baryon_number(anti_delta0, 1).
l_e(anti_delta0, 0).
l_mu(anti_delta0, 0).
l_tau(anti_delta0, 0).
strangeness(anti_delta0, 0).
charge(anti_delta0, 0).
spin(anti_delta0, 1/2).
lifetime(anti_delta0, 6E-24).
fermion(anti_delta0).

mass(delta_minus, 1234).
baryon_number(delta_minus, 1).
l_e(delta_minus, 0).
l_mu(delta_minus, 0).
l_tau(delta_minus, 0).
strangeness(delta_minus, 0).
charge(delta_minus, -1).
spin(delta_minus, 1/2).
lifetime(delta_minus, 6E-24).
fermion(delta_minus).

mass(anti_delta_minus, 1234).
baryon_number(anti_delta_minus, 1).
l_e(anti_delta_minus, 0).
l_mu(anti_delta_minus, 0).
l_tau(anti_delta_minus, 0).
strangeness(anti_delta_minus, 0).
charge(anti_delta_minus, 1).
spin(anti_delta_minus, 1/2).
lifetime(anti_delta_minus, 6E-24).
fermion(anti_delta_minus).

mass(xi0, 1315).
baryon_number(xi0, 1).
l_e(xi0, 0).
l_mu(xi0, 0).
l_tau(xi0, 0).
strangeness(xi0, -2).
charge(xi0, 0).
spin(xi0, 1/2).
lifetime(xi0, 2.9E-10).
fermion(xi0).

mass(anti_xi0, 1315).
baryon_number(anti_xi0, 1).
l_e(anti_xi0, 0).
l_mu(anti_xi0, 0).
l_tau(anti_xi0, 0).
strangeness(anti_xi0, -2).
charge(anti_xi0, 0).
spin(anti_xi0, 1/2).
lifetime(anti_xi0, 2.9E-10).
fermion(anti_xi0).

mass(xi_minus, 1321).
baryon_number(xi_minus, 1).
l_e(xi_minus, 0).
l_mu(xi_minus, 0).
l_tau(xi_minus, 0).
strangeness(xi_minus, -2).
charge(xi_minus, -1).
spin(xi_minus, 1/2).
lifetime(xi_minus, 1.64E-10).
fermion(xi_minus).

mass(anti_xi_minus, 1321).
baryon_number(anti_xi_minus, 1).
l_e(anti_xi_minus, 0).
l_mu(anti_xi_minus, 0).
l_tau(anti_xi_minus, 0).
strangeness(anti_xi_minus, -2).
charge(anti_xi_minus, 1).
spin(anti_xi_minus, 1/2).
lifetime(anti_xi_minus, 1.64E-10).
fermion(anti_xi_minus).

mass(omega, 1672).
baryon_number(omega, 1).
l_e(omega, 0).
l_mu(omega, 0).
l_tau(omega, 0).
strangeness(omega, -3).
charge(omega, -1).
spin(omega, 1/2).
lifetime(omega, 0.82E-10).
fermion(omega).

mass(anti_omega, 1672).
baryon_number(anti_omega, 1).
l_e(anti_omega, 0).
l_mu(anti_omega, 0).
l_tau(anti_omega, 0).
strangeness(anti_omega, -3).
charge(anti_omega, 1).
spin(anti_omega, 1/2).
lifetime(anti_omega, 0.82E-10).
fermion(anti_omega).

%QUARKS
mass(up, 2.3).
baryon_number(up, 1/3).
l_e(up, 0).
l_mu(up, 0).
l_tau(up, 0).
strangeness(up, 0).
charm(up, 0).
bottomness(up, 0).
topness(up, 0).
charge(up, 2/3).
spin(up, 1/2).
lifetime(up, 'Stable').
fermion(up).

mass(anti_up, 2.3).
baryon_number(anti_up, 1/3).
l_e(anti_up, 0).
l_mu(anti_up, 0).
l_tau(anti_up, 0).
strangeness(anti_up, 0).
charm(anti_up, 0).
bottomness(anti_up, 0).
topness(anti_up, 0).
charge(anti_up, -2/3).
spin(anti_up, 1/2).
lifetime(anti_up, 'Stable').
fermion(anti_up).

mass(down, 4.8).
baryon_number(down, 1/3).
l_e(down, 0).
l_mu(down, 0).
l_tau(down, 0).
strangeness(down, 0).
charm(down, 0).
bottomness(down, 0).
topness(down, 0).
charge(down, -1/3).
spin(down, 1/2).
lifetime(down, 'Stable').
fermion(down).

mass(anti_down, 4.8).
baryon_number(anti_down, 1/3).
l_e(anti_down, 0).
l_mu(anti_down, 0).
l_tau(anti_down, 0).
strangeness(anti_down, 0).
charm(anti_down, 0).
bottomness(anti_down, 0).
topness(anti_down, 0).
charge(anti_down, 1/3).
spin(anti_down, 1/2).
lifetime(anti_down, 'Stable').
fermion(anti_down).

mass(strange, 95).
baryon_number(strange, 1/3).
l_e(strange, 0).
l_mu(strange, 0).
l_tau(strange, 0).
strangeness(strange, -1).
charm(strange, 0).
bottomness(strange, 0).
topness(strange, 0).
charge(strange, 1/3).
spin(strange, 1/2).
lifetime(strange, 1.24E-8).
fermion(strange).

mass(anti_strange, 95).
baryon_number(anti_strange, 1/3).
l_e(anti_strange, 0).
l_mu(anti_strange, 0).
l_tau(anti_strange, 0).
strangeness(anti_strange, -1).
charm(anti_strange, 0).
bottomness(anti_strange, 0).
topness(anti_strange, 0).
charge(anti_strange, -1/3).
spin(anti_strange, 1/2).
lifetime(anti_strange, 1.24E-8).
fermion(anti_strange).

mass(charm, 1275).
baryon_number(charm, 1/3).
l_e(charm, 0).
l_mu(charm, 0).
l_tau(charm, 0).
strangeness(charm, 0).
charm(charm, 1).
bottomness(charm, 0).
topness(charm, 0).
charge(charm, 2/3).
spin(charm, 1/2).
lifetime(charm, 1.1E-12).
fermion(charm).

mass(anti_charm, 1275).
baryon_number(anti_charm, 1).
l_e(anti_charm, 0).
l_mu(anti_charm, 0).
l_tau(anti_charm, 0).
strangeness(anti_charm, 0).
charm(anti_charm, 1).
bottomness(anti_charm, 0).
topness(anti_charm, 0).
charge(anti_charm, -2/3).
spin(anti_charm, 1/2).
lifetime(anti_charm, 1.1E-12).
fermion(anti_charm).

mass(top, 173210).
baryon_number(top, 1/3).
l_e(top, 0).
l_mu(top, 0).
l_tau(top, 0).
strangeness(top, 0).
charm(top, 0).
bottomness(top, 0).
topness(top, 1).
charge(top, 2/3).
spin(top, 1/2).
lifetime(top, 4.2E-25).
fermion(top).

mass(anti_top, 173210).
baryon_number(anti_top, 1/3).
l_e(anti_top, 0).
l_mu(anti_top, 0).
l_tau(anti_top, 0).
strangeness(anti_top, 0).
charm(anti_top, 0).
bottomness(anti_top, 0).
topness(anti_top, 1).
charge(anti_top, -2/3).
spin(anti_top, 1/2).
lifetime(anti_top, 4.2E-25).
fermion(anti_top).

mass(bottom, 4180).
baryon_number(bottom, 1/3).
l_e(bottom, 0).
l_mu(bottom, 0).
l_tau(bottom, 0).
strangeness(bottom, 0).
charm(bottom, 0).
bottomness(bottom, -1).
topness(bottom, 0).
charge(bottom, -1/3).
spin(bottom, 1/2).
lifetime(bottom , 1.3E-12).
fermion(bottom).

mass(anti_bottom, 4180).
baryon_number(anti_bottom, 1/3).
l_e(anti_bottom, 0).
l_mu(anti_bottom, 0).
l_tau(anti_bottom, 0).
strangeness(anti_bottom, 0).
charm(anti_bottom, 0).
bottomness(anti_bottom, -1).
topness(anti_bottom, 0).
charge(anti_bottom, 1/3).
spin(anti_bottom, 1/2).
lifetime(anti_bottom, 1.3E-12).
fermion(anti_bottom).

%GAUGE_BOSONS
mass(higgs, 125180).
charge(higgs, 0).
colour_charge(higgs, 0).
spin(higgs, 0).
lifetime(higgs, 1.56E-22).
boson(higgs).

mass(photon, 0).
charge(photon, 0).
colour_charge(photon, 0).
spin(photon, 1).
lifetime(photon, 'Stable').
boson(photon).

mass(gluon, 0).
charge(gluon, 0).
colour_charge(gluon, 0).
spin(gluon, 1).
lifetime(gluon, 'Stable').
boson(gluon).

mass(z0_boson, 91188).
charge(z0_boson, 0).
colour_charge(z0_boson, 0).
spin(z0_boson, 1).
lifetime(z0_boson, 3E-25).
boson(z0_boson).

mass(w_plus_boson, 80379).
charge(w_plus_boson, 1).
colour_charge(w_plus_boson, 0).
spin(w_plus_boson, 1).
lifetime(w_plus_boson, 3E-25).
boson(w_plus_boson).

mass(w_minus_boson, 80379).
charge(w_minus_boson, -1).
colour_charge(w_minus_boson, 0).
spin(w_minus_boson, 1).
lifetime(w_minus_boson, 3E-25).
boson(w_minus_boson).



