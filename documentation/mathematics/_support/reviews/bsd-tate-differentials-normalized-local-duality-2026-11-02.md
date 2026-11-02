# Genuine elliptic Tate-module cochain differentials and normalized finite local Tate duality

Date: 2026-11-02 (America/Los_Angeles).
Local source formalization attribution: grwtsk contributors.
Original Tau Ceti mathematical/Lean suppliers: The Tau Ceti contributors (Apache-2.0).

**Source-proof-candidate disposition.** The mathematical source and theorem comparisons below were
read from pinned original upstream, not guessed. The two new isolated Lean source candidates are
UNCOMPILED: parsing NOT_RUN, elaboration NOT_RUN, compilation NOT_RUN, fresh kernel replay NOT_RUN,
transitive axiom audit NOT_RUN, incompatible external adapter import NOT_RUN. A written proof
script is NOT acceptance. No sorry, admit or axiom declarations have been added. No CI,
native verifier, Noe scheduler, proof-automation job, or separate replay was dispatched.
This advance does NOT prove the all-place derived Selmer quasi-isomorphism or BSD.

## 1. Exact immutable source boundary

Current mathematical repository: grwtsk/math main at the source publication commit recorded
after publication; root toolchain Lean v4.34.1 and pinned Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612, unchanged.

Pinned original upstream TauCetiProject/TauCeti revision:
2bdb755239d3bd84760e99bc83166bdf7cc75a6b, Lean v4.36.0-rc1.
The following original exact blobs were inspected:
- TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Coefficients.lean,
  d56decb915934d38ff4ed5271ed59c73953a89e1. W.PointCoeff is the
  genuine discrete E(Ksep), W.TorsionCoeff m its actual Galois-stable m-torsion,
  with the existing continuous G_K action.
- TauCeti/Algebra/Module/Torsion/TateModule.lean,
  62e7fac1cb918662dde0e644e61060d4428e9942. TateModule p A,
  proj, proj_map, map_id, map_comp, tateModuleTransition, continuous_map_apply.
- TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean,
  9596754d63dfddae05765acc47fab267df58da7e. Original unnormalized
  continuous C1/C2 and signed differentials
  d0(x)(g)=g*x-x;
  d1(c)(g,h)=g*c(h)-c(gh)+c(g);
  d1_comp_d0_apply; map_d0_apply; map_d1_apply; continuous_d0_apply and
  continuous_d1_apply.
- TauCeti/NumberTheory/ClassFieldTheory/Local/Duality/Perfect.lean,
  f2a94093d03c3be0d1b2c048b4f516d773cbe6ba:
  tateDualityPairing_perfect_mixed, for the actual finite smooth
  GalRep n F with complementary degrees i+j=2.
- TauCeti/NumberTheory/ClassFieldTheory/Brauer/RootsOfUnity.lean,
  7d21171a7372904ae7c8a715aa74f389aebd7cae:
  h2MuEquivZMod and exact local invariant normalization
  toRatAddCircle_h2MuEquivZMod, including mixed-characteristic version.
- TauCeti/NumberTheory/ClassFieldTheory/Local/Duality/Basic.lean,
  f3fd4468aeca0e6f3001054fcfcedfef8f0fd6e4:
  genuine Tate dual Hom(A,mu_n) and evaluation/cup pairing.
- TauCeti/NumberTheory/ClassFieldTheory/Local/Duality/Explicit.lean,
  67c1bd47a33d68caff12f48125172f68939508ed:
  comparison between separable-closure explicit cocycles and canonical
  GalRep / continuous-cohomology pairings.
- TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/MulByInt/WeilPairing/Galois.lean,
  470670aa2d3eaf266636871328b42fd62d063d9d:
  source Galois compatibility of actual finite Weil pairing.
- TauCeti/AlgebraicGeometry/EllipticCurve/TateModule/WeilPairing.lean,
  c2e8205ffc8d30c66c74949e51517e4660ace058:
  continuous p-adic Weil pairing on original geometric T_pE.

These external modules are NOT root imports under the incompatible grwtsk/math toolchain.
The primary prior isolated adapter carrier source remains at Git blob
f08571d788aedea1dd6f3574e7a88db752a8b22d:
documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiContinuousTateCochains.lean.
It constructs the continuous-map / locally-constant compatible finite-coordinate
carrier equivalence, NOT an accepted chain-complex equivalence.

## 2. Actual differential bridge

NEW external source adapter:
documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiTateCochainDifferentials.lean
(record its newly created blob at publication).

The coefficient is literally T = TateModule p W.PointCoeff = lim E[p^n](Ksep).
The source Galois group is literally AbsoluteGaloisGroup K.
The group action is not fitted by matrices. It is defined by
  rho_p(g) = TateModule.map (x |-> g*x)
using the actual upstream action on W.PointCoeff.

The point-action identities give rho_p(1)=id, rho_p(gh)=rho_p(g)rho_p(h),
and additivity; the source TateModule.continuous_map_apply combines with
the ACTUAL locally constant torsion-point Galois action to prove
continuous rho_p. Projection to E[p^n] preserves rho_p:
  pr_n(g*x)=g*pr_n(x).

Use precisely the original continuous inhomogeneous differentials
  d0_T(x)(g) = g*x-x
  d1_T(c)(g,h)=g*c(h)-c(gh)+c(g)
with original C1/C2 continuity. Source d1_comp_d0_apply yields
  d1_T d0_T = 0
on the same actual Tate-module Galois coefficient.

Crucially, invoking the REAL upstream map_d0_apply and map_d1_apply with
the genuine coefficient projection gives, for EVERY n:
  pr_n(d0_T x)(g) = d0_(E[p^n])(pr_n x)(g);
  pr_n(d1_T c)(g,h) =
    d1_(E[p^n])(g |-> pr_n(c(g)))(g,h).
These are identities in the original torsion cochains, not merely
dimension matches or abstract cohomology assumptions.

For the source p-power transition t_n:E[p^(n+1)]->E[p^n],
t_n(x)=p*x, source smul_comm proves Galois equivariance and the same
two upstream naturality theorems prove:
  t_n d0_(n+1) = d0_n t_n;
  t_n d1_(n+1) = d1_n (t_n applied to every coefficient).
In grwtsk's existing Kummer tower, stage k is E[p^(k+1)];
use the general theorem with n=k+1. At H1 of the Kummer
rational-point complex, the transition is REDUCTION of the same
point quotient, not multiplication by p. Do not conflate these.

These source-level cochain identities are a genuine incremental
bridge to comparing the truncation tower and continuous T_pE.
They are NOT the derived limit's H^i comparison, nor a proof that
Rlim of the point-corrected good-truncated Selmer fibers is the
Nekovar local-condition complex.

## 3. Important correction: upstream local perfectness is ALREADY proved

The prior review
bsd-continuous-tate-cochains-restricted-archimedean-2026-11-02.md
stated that an inspected Tau Ceti source had not provided full
finite local perfectness. This inspection found the contrary at
the SAME immutable pin: tateDualityPairing_perfect_mixed in
Local/Duality/Perfect.lean. The old absence claim has been given
an explicit correction notice, retained only as provenance.

NEW external normalized consumer:
documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiNormalizedLocalTatePerfect.lean
(record its newly created blob at publication).

For a characteristic-zero nonarchimedean local field F, nonzero
n, and the ACTUAL finite smooth discrete GalRep n F coefficient A,
use the original trace
  tr_F,n = h2MuEquivZMod F n:
       H²(F,mu_n) ≃+ ZMod n.

It is the class-field-theoretic Brauer invariant: the class of
k/n in Q/Z maps to residue k in ZMod n. The source lemma
toRatAddCircle_h2MuEquivZMod proves this chosen normalization.

Apply the original upstream
  tateDualityPairing_perfect_mixed F n hn A tr_F,n ...
to obtain the exact perfect pairing in complementary degrees,
  H^i(F, A^vee(1)) x H^(2-i)(F,A) -> ZMod n,
for this genuinely supplied A. No new duality axiom, no chosen
nondegenerate form, and no BSD rank hypothesis is used. In
particular, taking n=p^(k+1) is allowed even when p is the
residue characteristic: n is a UNIT IN F (not necessarily
in its valuation ring). The theorem supports nonarchimedean
local fields, not the real-place Tate correction.

This establishes the mathematical GENERAL finite-coefficient
perfectness supplier with normalized trace. It does NOT yet
construct an E[p^n] GalRep object and therefore must NOT be
reported as a compiled E-specific local Tate-duality theorem.

## 4. Exact remaining elliptic local duality construction

1. At an actual completion F=Q_v, construct
   A_(E,v,n) : GalRep (p^(n+1)) F
   with underlying module the authentic W.TorsionCoeff(p^(n+1)).
   Transport the original continuous action through
   absoluteGaloisGroupRestrictEquiv F, show the exact
   ZMod(p^(n+1))-module structure, finiteness, discrete topology
   and IsSmoothDiscrete. Do NOT choose a different representation
   with the same rank.
2. Compare the actual finite Weil pairing
   e_(p^n): E[p^n] x E[p^n] -> mu_(p^n)
   with the source internalHom/tateDual evaluation pairing. Prove
   its Galois-equivariant, alternating, nondegenerate isomorphism
   A_(E,v,n) ≅ tateDual(A_(E,v,n)), retaining polarization
   and argument-order signs.
3. Specialize normalized_localTate_perfect to that EXACT A.
   Prove local Kummer images for E and its principal-polarized
   dual are one another's annihilators, not just subgroups of
   equal cardinality.
4. Prove naturality under n transitions and passage to compact
   T_pE versus discrete dual coefficients, with correct local
   Tate twists, Pontryagin dual topologies and H0/H2 terms.
5. Assemble finite-S restricted products with the missing reverse
   away-S unramified/Kummer equality. Treat real p=2 Tate
   cohomology separately; no finite nonarchimedean theorem
   supplies that archimedean correction.
6. Only after these exact objects and derived maps exist should
   one instantiate the published generic Bockstein truncated
   deformation from a REAL p-adic Selmer complex differential.
   The noncircular complex Hasse--Weil L-jet and full BSD-II
   regulator/period/Sha/Tamagawa/torsion comparison remains OPEN.

## 5. Independent finite consistency checks, NOT proof acceptance

A separate exact-integer C2 module fixture with coefficient
Z/(p^k) for p=2,3,5 and sign Galois action checked:
- 3,680 literal d1(d0(x))=0 identities;
- 1,840 p-transition / d0 compatibility identities;
- 5,192 p-transition / fully signed d1 compatibility identities.

These verify simple consequences of the original algebra in
finite test instances, including p=2. They do NOT verify Lean,
construct the elliptic source, prove local Tate duality, or certify
any number-theoretic infinite/cohomological assertion.

## 6. Acceptance discipline

New source files and corrected review are isolated; preserve
GRWTSK.lean, lakefile.toml, lean-toolchain, all existing
Kummer good-truncation files and their exact corrected H2
Weil--Chatelet residue. In a future independently authorized
and compatible Tau Ceti Lean v4.36.0-rc1 environment,
compile the isolated source files with --wfail,
freshly kernel-check the full declared dependency closure,
run per-declaration #print axioms and transitive generated/private
trust audit, and compare the source field/repr identities.
Do not turn the local class-field theorem into an elliptic
BSD claim merely because it is available.

## Original arithmetic literature

Jan Nekovar, Selmer complexes, Asterisque 310 (2006), sections
6.1, 6.7, 7.8, 11.2; Silverman, The Arithmetic of Elliptic Curves,
2nd ed., III.7, VII, X.4; Neukirch--Schmidt--Wingberg,
Cohomology of Number Fields (2nd ed.) section 7.2;
J. S. Milne, Arithmetic Duality Theorems.
