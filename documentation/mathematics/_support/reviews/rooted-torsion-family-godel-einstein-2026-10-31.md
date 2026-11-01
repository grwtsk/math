# Root-relative torsion across families and the Gödel–Einstein chronology boundary

Local mathematical attribution: grwtsk contributors. 2026-10-31.

## Scope and primary literature

This increment treats the user's statement "torsion is proportionally positive
except for at the root" as a testable *quadratic energy principle*, not as a
universal assertion that algebraic torsion elements or antisymmetric connection
torsion tensors are positive in an intrinsic ordering. It also interprets the
request about "Godels response to Einstein" according to the historical paper
*A Remark About the Relationship Between Relativity Theory and Idealistic
Philosophy* rather than inventing a source-defined "idealog" object.

Primary sources:
* Kurt Gödel, *An Example of a New Type of Cosmological Solutions of
  Einstein's Field Equations of Gravitation*, Reviews of Modern Physics 21
  (1949) 447–450, DOI 10.1103/RevModPhys.21.447.
* Kurt Gödel, *A Remark About the Relationship Between Relativity Theory
  and Idealistic Philosophy*, in P. A. Schilpp (ed.), *Albert Einstein:
  Philosopher–Scientist* (1949) 555–562, reprinted in Gödel, Collected Works
  II (Oxford), 202–207, DOI 10.1093/oso/9780195147216.003.0015.
* Charles Parsons, *Gödel and Philosophical Idealism*, Philosophia
  Mathematica 18 (2010), 166–192, DOI 10.1093/philmat/nkq001.
The finite directed-cycle theorem below is standard order theory,
mathematically inspired by Gödel's causality observation but NOT a port
of his metric or a formal assertion of a philosophical conclusion.

## The shared mathematical invariant

Let i range over an arbitrary type of mathematical families. Each family
has a possibly dependent state type X_i, real measured response tau_i(x)
and a family scale kappa_i>0. Define

   Root_i := {x : tau_i(x)=0},
   Energy_i(x) := kappa_i * (tau_i(x))^2.

Then Energy_i(x)>=0, Energy_i(x)=0 exactly on Root_i, and it is strictly
positive away from Root_i. A unique root requires extra evidence that
tau_i has no nontrivial kernel; merely giving positive kappa_i is not
enough. There is no uniform lower bound as i varies unless the scales,
metrics, injectivity constants and normalizations are controlled.

For a proposed frame f:X_i->X_j the signed response defect is
   D_f(x)=tau_j(f(x))-tau_i(x).
The exact energy return is
   Energy_j(f(x))=kappa_j*(tau_i(x)+D_f(x))^2.
Hence
   Energy_j(f(x)) <= 2*kappa_j*(tau_i(x)^2+D_f(x)^2).
This is not a cancellation lemma; it explicitly exposes the changed
source and pays the full measured defect. For response-preserving
equivalences, weighted equality
  Energy_j(f(x))*kappa_i=Energy_i(x)*kappa_j
holds; equality of the energies additionally needs kappa_i=kappa_j.
One cannot transport sign or physical coherence from mere type equivalence.

New GRWTSK candidate:
 GRWTSK/FunctionalAnalysis/RootedQuadraticFamilies.lean.
It proves this exact source-relative nonnegative/positive/zero/transport
contract; it is not an automatic family-wide theorem about unspecified
physical torsion.

## Concrete mathematical families and no-go checks

| Family | Object/observable/root | Accepted conclusion at analytic scope | Unproved transport |
| --- | --- | --- | --- |
| finite additive torsion groups | G finite additive; root 0; normalized discrete phase defect 0 at 0 and 1 elsewhere | a positive coefficient times its square is positive away from 0, invariant under additive equivalences and sign reflection | no canonical positive ordering or geometric length on abstract torsion; no order-uniform trigonometric gap |
| dependent prime/Automircron | existing PrimeIndex, Fiber p and Sigma Fiber retained; extra ZMod p phase; root phase=0 | phase reflection leaves the *literal* numeric source and signed causal Gram unchanged; its separate phase penalty is nonnegative and positive off phase zero | the phase penalty does not bound the Möbius signed cross Gram, A_j, the nonunit Dirichlet contribution, or prove RH |
| mechanical torsion spring | existing twist theta_c - inverseGear*theta_r, stiffness k>0; root twist=0 | existing potential k*twist²/2 is positive off zero-twist and equals the generic energy | twist=0 is not a unique physical state; kinetic motion and original signed external work stay separate |
| differential geometry torsion | the actual CovariantDerivative.torsion is an alternating tensor; choose a positive-definite *norm* on its tensor carrier | normed energy k*||T||² is positive if T !=0, zero only for zero tensor; norm-preserving frames keep energy | no claim positivity of Lorentzian index contraction, no automatic observer-space metric/projection, no Goedel-metric computation |
| finite homological torsion | existing TorsionLedger, Smith and Bockstein phase characters (not modified) | finite typed torsion coordinates can potentially instantiate the abstract finite-group cost after exact equivalence | no stage-uniform bound or Bockstein/cohomology intertwinement inferred |
| elliptic torsion and return jets | issue #203/#226: actual torsion period r of translation delta | orbit may be periodic with r contact sites; any positive energy needs an explicit norm/selected origin | finite torsion orbit does not produce infinitely many distinct sites, nor a line-bundle fixed-fiber automorphism |
| causal graph / sofic language | admitted nonempty directed path and a strictly increasing real global clock | a closed directed causal path obstructs such a clock | no inference that one infinite trace's whole language is sofic; no constructed Goedel spacetime |
| RH/NS harmonic representations | signed source Gram/NS quadratic interactions, their original residual terms | a positive norm can measure a frame defect | a norm bound is not small signed cancellation; original mixed terms and complete residual remain |

The group cost is a **discrete diagnostic**, not physical energy of
an arbitrary torsion class. The phase source keeps prime and fiber
dependent types intact. In the prime adapter, an extra phase group is
only an auxiliary coordinate: even when reflection is nontrivial, the
original signed Gram is not magically reduced.

Hostile exact spring fixture:
  inertiaCrank=inertiaRotor=stiffness=inverseGear=1,
  theta_c=theta_r=1, omega_c=1, omega_r=0.
Then twist=0 but mechanicalEnergy=1/2 and theta_r != 0.
Thus "root" of torsion potential is not a zero-motion state.

Another hostile case: if family weights kappa_n tend to zero, pointwise
strict positivity does not provide any stage-uniform positive spectral
gap. For a finite cyclic group Z/n, a faithful circle chord has its
smallest positive squared length of order n^-2. The discrete 0/1 cost
does not claim to approximate that metric with a uniform comparison.

## Gödel–Einstein: physical vorticity vs torsion and the time claim

Gödel's 1949 solution is a rotating dust spacetime with nonzero
vorticity and closed timelike curves. Standard GR uses the torsion-free
Levi-Civita connection. In particular, "positive spacetime torsion
away from a root" does NOT characterize that Gödel model.
The space-local positive-definite observer metric and the indefinite
spacetime Lorentz metric must also remain separate.

The new finite *chronology* theorem:
  if there is a nonempty directed cycle in a state graph,
  no scalar t:State->Real increases strictly along EVERY directed edge.
This follows by composing strict inequalities around the cycle to get
t(x)<t(x), a contradiction. A two-state false->true->false exact example
is retained. The theorem is a finite-model analogue of the obstruction
to global temporal order posed by closed timelike curves, NOT a proof
that a genuine Gödel metric exists or that objective time is unreal.
The philosophical question belongs to idealistic philosophy,
not to an invented named "idealog" mathematical type. Gödel's
inferences and their philosophical criticism are distinct from
the exact no-clock theorem.

This is the correct common research discipline: local monotone
measurements need not define one global monotone coordinate when
there is holonomy or a causal cycle, just as a positive local energy
need not yield a global uniform spectral bound.

## Independent checks, prior art and acceptance boundary

Analytic derivations are elementary positivity of real squares,
invariance under group equivalence, exact source-index preservation
of prime-local sign reflection, and strict-order transitivity.
These are reusable formal interfaces, not claimed novel theorems.
External original torsion source is Mathlib's torsion of an affine
connection (Patrick Massot, Michael Rothgang, Heather Macbeth)
already present in GRWTSK/DifferentialGeometry/TorsionPublic.lean.
Gödel's geometry and philosophy are bibliographic comparators,
not imported Lean proofs.

Local finite diagnostics: for 1<=n<=23 all residues in Z/n satisfy
the 0/1-root positivity and reflection identity with kappa=5/2.
The exact spring hostile fixture gives twist=0 and energy=1/2.
These are arithmetic experiments, not kernel verification.

New files:
  GRWTSK/FunctionalAnalysis/RootedQuadraticFamilies.lean
  GRWTSK/GroupTheoryAndGeneralizations/RootedFiniteTorsionEnergy.lean
  GRWTSK/NumericalAnalysis/RootedSpringEnergyBridge.lean
  GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/AutomircronRootedPrimePhase.lean
  GRWTSK/DifferentialGeometry/RootedTorsionTensorEnergy.lean
  GRWTSK/DynamicalSystemsAndErgodicTheory/GodelEinsteinChronology.lean

There is no source-identification claim for every file in the
repository, or proof of a scalar metric for an arbitrary algebraic
torsion object; remaining families must supply their actual metrics,
zero loci, model/observer choices, maps and defects.

Current root toolchain at source inspection: Lean v4.34.1,
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
All new sources: PROOF_CANDIDATE, compilation NOT_RUN, fresh kernel
NOT_RUN, transitive axioms NOT_RUN, independent review NOT_RUN.
Source publication/readback and verification issue are separate.
Do not infer Einstein-equation correctness, full spacetime metric,
RH/NS cancellation, or a philosophical entailment from these results.
