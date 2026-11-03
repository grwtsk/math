# Genuine elliptic theta group: rational functions, strict Kummer lift and obstruction polarization

**Date:** 2026-11-02, America/Los_Angeles.
**Original pinned upstream:** TauCetiProject/TauCeti
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`;
Lean `v4.36.0-rc1`; The Tau Ceti contributors,
Apache-2.0. **Mathematical source and code provenance:** distinguish
the original upstream theorems below from the local
grwtsk contributors' isolated MIT source candidates.
**Root grwtsk/math toolchain:** Lean `v4.34.1`, unchanged.

**Disposition:** The GEOMETRIC MATHEMATICAL derivations in §§2–6
are constructive, and the exact formula for the Kummer strict lift
and the noncommutative polarization have direct proofs.
The Lean files are **UNCOMPILED SOURCE PROOF CANDIDATES**.
Parsing NOT_RUN; elaboration NOT_RUN; Lean compilation NOT_RUN;
compatible Tau Ceti adapter integration NOT_RUN; independent
fresh kernel replay NOT_RUN; transitive axiom audit NOT_RUN.
An actual Lean theorem proving the original period-index
obstruction as a class of continuous H², its source-specific
commutator/Weil orientation and exact degree-(1,1) cup
identification is STILL OPEN. No new axiom/sorry/admit,
root imports, toolchain migration, CI/native/Noe dispatch,
Sha finiteness, BSD-I/II or complex Hasse–Weil jet claim.

## 1. Exact original geometric suppliers

All blob identities are from the immutable upstream pin:

- `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FunctionField/TorsionDivisor.lean`,
  blob `0f61446aae1bba38a194ff71d170cf9e868e9e4d`.
  `W.exists_principal_eq_zsmul_ofPoint_sub_infinity`
  supplies a REAL nonzero rational function f_T with
  `div f_T=n([T]-[O])` for every authentic n-torsion point.
- `.../Affine/FunctionField/Divisor/Sum.lean`,
  blob `966862188a03cff2e5f503a25b9d369e26b648ab`.
  `W.divisorSum_eq_zero_iff` is the ACTUAL elliptic
  degree-zero/sum-zero principality criterion; its
  `ofPoint_sub_ofPoint_mem_ker_degree` and
  `divisorSum_ofPoint_sub_ofPoint` compute the exact
  rational Kummer divisor.
- `.../Affine/FunctionField/Translation/Basic.lean`,
  blob `9cdf4bb3a58491d48b8a3622ee10c9447cab2dea`,
  original `W.translation`, `translation_add`,
  `translation_zero`; and `Translation/Place.lean`,
  blob `5d08df8d3fdb4df91355c821371d77bbd89fcb84`,
  `translation_smul_pointEquivDegreeOnePlace`.
  The original pullback `tau_P^*` moves `[S]`
  to `[S-P]`; hence `tau_{-T}^*` moves it
  to `[S+T]`. **This minus is essential.**
- `TauCeti/FieldTheory/FunctionField/Divisor/Principal.lean`,
  blob `71265ad956f6b10672768a65a4800864667a740e`.
  Original `Divisor.principal_mul`, `principal_div`,
  `principal_inv`, `principal_smul` and
  `principal_eq_zero_iff` show that a nonzero rational
  function with zero divisor is a base-field constant,
  using `isIntegrallyClosedIn_functionField`.
- `.../Affine/FunctionField/Galois/Basic.lean`,
  blob `562a808bcaeb0db70c918b2a447240717fdf3e04`,
  original `W.functionFieldGaloisAction` and
  `W.functionFieldGaloisAction_translation`.
  `Galois/Divisor.lean`,
  blob `52697374b29a8efe552dbf87b34a515269885020`,
  supplies `W.divisorGaloisAction_principal`;
  `Galois/Place.lean`,
  blob `a7e8535dc893bc23fd9e7c6f649f3fdc46b735bd`,
  supplies `W.placeGaloisAction_pointEquivDegreeOnePlace`
  and `placeGaloisAction_infinity`;
  `Affine/Point/Galois.lean`,
  blob `4917b43f14a4c331a399502389cef6ea41b9b2b8`,
  supplies `W.pointGaloisAction` and its group law.
- `.../GaloisCohomology/Coefficients.lean`,
  blob `d56decb915934d38ff4ed5271ed59c73953a89e1`.
  `W.PointCoeff`, `W.TorsionCoeff n`,
  `W.pointCoeffEquiv` and `W.smul_basePointCoeff`
  retain the literal original geometric E[n] and
  Galois-fixed rational elliptic points.
- `.../GaloisCohomology/Descent.lean`,
  blob `3dd14be3ae92e9a0b5d37c3fbaf6e03684292d4b`,
  the original Kummer cocycle `sigma Q - Q`
  and its actual continuous `Z1` proof.
- `.../GaloisCohomology/WeilPairing/Basic.lean`,
  blob `d54088b59839bf055f1670006127a4d854adaa50`,
  the genuine original `W.torsionCoeffWeilPairing`.
  `Isogeny/MulByInt/WeilPairing/Basic.lean`,
  blob `8957e64b52bc94ada398c4724b256630558397cb`,
  proves the Weil pairing via a function `g_T` with
  `div(g_T)=[n]^*([T]-[O])` and the Kummer character
  `e_n(S,T)=tau_S^*g_T/g_T`. Comparing THAT real
  formula with the theta commutator is the remaining
  geometric sign-convention theorem.
- `ContCohomology/LowDegree.lean`,
  blob `9596754d63dfddae05765acc47fab267df58da7e`,
  and `Cup/Product.lean`,
  blob `a751b639bb5818ab0c133b2234c0e50bf66dbf70`,
  supply genuine continuous cochains, the signed
  inhomogeneous `d1`, `H2pi_eq_iff`, and source
  `explicitCup11_mk`:
  `(a cup b)(sigma,tau)=e(a_sigma,sigma b_tau)`.

## 2. The REAL theta group for L=O(n[O])

Work on `E/F^sep`, n nonzero and invertible in F.
The point `T∈E[n](F^sep)` is a genuine point, never a
chosen vector of an abstract rank-two representation.

Set `D_T=n([T]-[O])`; the original torsion-divisor
theorem constructs `f_T∈F^sep(E)^×` with
`div(f_T)=D_T`. The set of all `(T,f)` satisfying
that equation carries the multiplication

  (T,f)*(S,g) = (T+S, f * tau_{-T}^*(g)).

The source point-place identity computes
  tau_{-T}^*D_S=n([T+S]-[T]),
hence
  D_T+tau_{-T}^*D_S=D_{T+S}.
Original `Divisor.principal_mul` and `principal_smul`
therefore give closure. Original `translation_add`
gives associativity; identity is `(O,1)), and
inverse is `(-T,tau_T^* f^{-1})`.
Every theta lift over O has zero principal divisor and
so is a nonzero constant in `F^sep×`, by the original
`principal_eq_zero_iff`.
Conversely any nonzero constant gives a theta lift
over O, and original `translation` fixes constants.
Thus this is the genuine central extension

  1 -> (F^sep)^× -> G_{O(nO)}(F^sep)
    -> E[n](F^sep) -> 1.

Its central commutator is the ORIGINAL rational-function
constant

  C(T,S) =
    [f_T * tau_{-T}^* f_S] /
    [f_S * tau_{-S}^* f_T] ∈ (F^sep)^×,

not an arbitrary bilinear form. Both numerator and
denominator have divisor `D_{T+S}`, so their
ratio has zero divisor. The original theorem
proves it is constant. It is independent of
rescaling the theta lifts because constants are central.

The new isolated source candidate
`documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiGeometricThetaKummerBoundary.lean`
(Git blob `b4aab596b08eb2e6a4a7a989112c491f4a19cdd2`)
contains `thetaDivisor`, `thetaTranslate`,
`ThetaLift`, `liftAt`, `thetaDivisor_add`,
`liftProduct`, `thetaCommutatorFunction`,
`thetaCommutator_principal_zero`,
`thetaCommutator_is_scalar`, all using genuine
upstream source APIs. Lean compilation is NOT_RUN.

## 3. Construct the original theta obstruction multiplier

Choose theta lifts `s(T)=(T,f_T)` for the finite,
genuine Galois module E[n]. Let
`a:Z¹(G_F,E[n](F^sep))` be an ORIGINAL continuous
Galois one-cocycle. Define

  U_a(sigma,tau)
    = f_(a_sigma) *
        tau_(-a_sigma)^* (sigma f_(a_tau)) /
      f_(a_(sigma*tau)).

This is literally the original theta-group boundary
`s(a_sigma) * sigma(s(a_tau)) * s(a_(sigma*tau))^{-1}`
in the central scalar kernel. Its numerator and
denominator have the same divisor because
`a_(sigma*tau)=a_sigma+sigma a_tau`.
Therefore `U_a(sigma,tau)` is a genuine nonzero
**constant**, not merely an arbitrary function.
This is the geometric construction of the raw
period-index obstruction cochain.

Associativity of the original translated theta
multiplication and Galois compatibility give

  U_a(sigma,tau) * U_a(sigma*tau,upsilon)
   = sigma(U_a(tau,upsilon)) * U_a(sigma,tau*upsilon).

The commutator is central, so scalar products
commute. Each theta function and each n-torsion
point is defined over a finite Galois extension
of F; since E[n] is finite, after enlarging to one
common finite Galois extension, the cochain
is locally constant. Hence the ordinary mathematical
class `Delta_n([a])=[U_a] in H²(G_F,(F^sep)^×)=Br(F)`
is well defined; altering theta lifts by scalars
changes `U_a` by a scalar 2-coboundary.

**Formalization boundary:** The isolated candidate
currently constructs the real raw function
`rawThetaObstructionFunction` and proves a
zero-principal-divisor criterion. It does NOT yet
give the source Lean `Continuous`/H² cocycle,
cochain-independence or Brauer comparison proofs.
The classical mathematical argument above must
be instantiated in the pinned source original
Galois-action/continuous-cochain API and replayed.

## 4. Explicit strict Kummer lift: Delta_n(delta_n P)=0

Fix `P∈E(F)` and `Q∈E(F^sep)` such that nQ=P.
The genuine divisor
  D_(Q,P) = n[Q]-[P]-(n-1)[O]
has degree zero and sum `nQ-P=O`. Tau Ceti's
ORIGINAL `W.divisorSum_eq_zero_iff` supplies
`h_Q∈F^sep(E)^×` such that
`div(h_Q)=D_(Q,P)`.

Set `a_sigma=sigma Q-Q` and
`u_sigma=tau_Q^*(sigma h_Q/h_Q)`
(not tau_{-Q}; see the point-place translation).
Since `P` and `O` are Galois-fixed,
  div(sigma h_Q/h_Q)=n([sigma Q]-[Q]).
The original translation-by-Q sends
`[sigma Q]→[sigma Q-Q]` and `[Q]→[O]`.
Thus `div(u_sigma)=D_(a_sigma)`, so
`(a_sigma,u_sigma)` is a genuine theta lift.

Source `functionFieldGaloisAction_translation`
and `translation_add` give

  tau_{-a_sigma}^*(sigma(tau_Q^*z))
    = tau_Q^*(sigma z).

Apply this with `z=tau h_Q/h_Q`; the product
of two genuine function units simplifies
**STRICTLY**, not modulo a coboundary:

  u_sigma * tau_{-a_sigma}^*(sigma u_tau)
  = tau_Q^*(sigma h_Q/h_Q) *
      tau_Q^*(sigma tau h_Q / sigma h_Q)
  = tau_Q^*(sigma tau h_Q/h_Q)
  = u_(sigma*tau).

The theta-group nonabelian boundary of the genuine
Kummer class therefore equals 1 pointwise.
This gives the classical geometric proof
`Delta_n(delta_n P)=0` for all nonzero n invertible
in F, including even n: **no division by two** is used.

The isolated source candidate defines
`rationalKummerDivisor`,
`exists_rationalKummerFunction`,
`rationalPoint`, `IsDivisionPoint`,
`divisionFunction`, `kummerThetaUnit`,
`galoisTranslation_cancel`,
`kummerThetaUnit_crossed`,
`kummerThetaUnit_divisor`,
`kummerThetaLift`, and
`kummerThetaLift_strictCrossed`.
All are SOURCE PROOF CANDIDATES, NOT compiled
or kernel admitted. The actual H² class is
still pending source verification.

## 5. Polarization by the ACTUAL theta commutator

For genuine cocycles a,b, denote arbitrary theta
lifts at fixed sigma,tau by

  x=s(a_sigma), z=s(sigma a_tau), u=s(a_(sigma*tau));
  y=s(b_sigma), w=s(sigma b_tau), v=s(b_(sigma*tau)).

The defects `p=x*z*u^{-1}` and
`q=y*w*v^{-1}` lie in the genuine scalar center.
Use **reversed order** `y*x` for the lift of
the sum cocycle to preserve the wanted
ordered cup convention. Then direct
noncommutative multiplication gives

  (y*x)*(w*z)*(v*u)^{-1}
      = [x,w] * q * p,

with `[x,w]=x*w*x^{-1}*w^{-1}`. The
only used commutations are centralities of
`p`, `q` and `[x,w]`, each forced by the
original geometric scalar-kernel theorem.
The difference between the actual section
`s(a+b)` and the chosen product lift `s(b)s(a)`
is itself scalar and changes the boundary
by an actual **2-coboundary**. Hence

  Delta_n(a+b)-Delta_n(a)-Delta_n(b)
      = [ (sigma,tau) |-> C(a_sigma,sigma b_tau) ]
      = a cup_(e_theta) b,

where C is the **geometric commutator**
already computed from actual rational functions.
This proves the mathematical central-extension
polarization identity without choosing a bilinear form.

New Mathlib-only source candidate
`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ThetaCentralPolarization.lean`,
blob `c2941f8f829614ac8a0487d31629f154598fd591`,
proves the exact noncommutative six-element group-word
identity `theta_boundary_product_polarization` and
the strict boundary cancellation. The hypotheses
are the genuine central commutations that the original
source geometric theta group provides.
The precise source-typed geometric action/section
and continuous H² class still require integration.

**Weil-sign gate:** Mumford/Zarhin/O'Neil
classically identify the commutator e_theta
of `G_{O(nO)}` with the original Weil
pairing, subject to the translation and
argument order. To obtain a Lean theorem with
the source *specific* `W.torsionCoeffWeilPairing`,
compare `C(T,S)` directly with upstream
`Isogeny.weilPairing` computed from the
genuine `g_T` and `tau_S^*g_T/g_T`.
The source-specific sign/equality is **NOT**
proved in the current Lean candidate. The
theta-commutator polarization is complete as
classical geometry, not yet kernel-accepted
as the original normalized Weil cup.

A finite Heisenberg model at n=2,3,4,5 checked
20,514 exact six-parameter group-word instances
with central defects and the above reversed
sum-lift orientation. This is diagnostic
integer algebra, NOT an elliptic or Lean proof.

## 6. Classical published sources

- Mumford, *On the equations defining abelian varieties I*,
  Inventiones Mathematicae 1 (1966), the theta
  group `G_L` and its commutator.
- O'Neil, *The period-index obstruction for elliptic
  curves*, Journal of Number Theory 95 (2002), 329–339:
  theta nonabelian connecting map and obstruction.
- Clark–Sharif, *Period, index and potential, III*,
  Algebra & Number Theory 4 (2010) 151–174,
  §2.1–2.2, Theorem 5 and O'Neil's identities:
  https://msp.org/ant/2010/4-2/ant-v4-n2-p02-s.pdf
- Benjamin Antieau and Asher Auel, *Explicit descent on elliptic curves
  and splitting Brauer classes*, Proposition 2.10:
  Weil cup as polarization of the theta obstruction
  (including the genuine central-extension commutator).
  https://math.dartmouth.edu/~auel/papers/docs/AA_g1c.pdf
- Fisher, *The Cassels–Tate Pairing and the Platonic Solids*,
  Journal of Number Theory 98 (2003), 105–155,
  §2.1 Proposition 2.1; DOI
  https://doi.org/10.1016/S0022-314X(02)00038-0:
  independent divisor-evaluation and signed
  Kummer/abelian Tate pairing comparison.

These published mathematical sources do NOT
supply an automatic Lean import at the pinned
Tau Ceti version. The current proof candidates
must be accepted by a compatible compiler/kernel
before any claim of formal verification.

## 7. Outstanding source-specific arithmetic targets

1. Compile the isolated true-theta source candidate
   under the original Tau Ceti Lean v4.36.0-rc1,
   not the independent math Lean v4.34.1.
   Repair elaboration only against the pinned
   original APIs; fresh kernel replay and transitive
   axiom audit must be separately recorded.
2. Prove the Galois lift operation is a genuine
   group action, theta scalar obstruction is a
   continuous **H²** cocycle and independent
   of the chosen theta-section.
3. Show the actual function-field commutator
   equals the original pinned `W.torsionCoeffWeilPairing`
   with a FIXED coherent sign and argument
   orientation. Use the original `Isogeny.weilPairing`
   through actual functions and Galois equivariance.
4. Transport this equality via the pinned
   `explicitCup11_mk`, `H2pi_eq_iff`,
   `h2MuEquivZMod` into the actual
   degree-(1,1) Brauer-normalized pairing,
   and complete the theta-identification of
   the cup-descended local abelian Tate pairing
   and its nondegeneracy. These are the remaining
   ingredients for the unconditional source-verified
   Kummer local-condition annihilator theorem.
5. Preserve the original local point-corrected
   full cone higher `H²(U_v)=H¹(F,E)`
   Weil–Châtelet residue and good truncation.
   Real p=2 needs modified Tate cohomology;
   the away-S reverse Kummer/unramified
   equality, compact `Rlim`, restricted products,
   Poitou–Tate, Néron–Tate regulator and
   COMPLEX Hasse–Weil central L-jet remain OPEN.
