# Surjectivity of the original elliptic Weil dual and the precise local Kummer annihilator proof

**Date:** 2026-11-02, America/Los_Angeles.
**Research scope:** actual continuous Galois cohomology of an elliptic E/F,
the local Tate pairing and point-corrected Selmer conditions.
**Original upstream:** TauCetiProject/TauCeti
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`
(Lean v4.36.0-rc1, The Tau Ceti contributors, Apache-2.0).
**Local mathematical/source attribution:** grwtsk contributors.

**IMPORTANT acceptance:** This record contains full ORDINARY mathematical proofs
at their cited arithmetic scopes and uncompiled Lean source PROOF CANDIDATES
for their source API reductions. Parsing NOT_RUN, elaboration NOT_RUN,
Lean compilation NOT_RUN, fresh independent kernel checking NOT_RUN,
transitive axiom audit NOT_RUN, compatible Tau Ceti build NOT_RUN.
No verification job, native runner, CI workflow or scheduler was dispatched.
No source candidate is declared a verified full arithmetic theorem by publication,
and no rank/BSD claim is established.

## 1. Source exactness: no abstract rank-two Weil proxy

The prior file
`documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiEllipticTorsionGalRepWeil.lean`
is extended on the SAME source, preserving all prior theorems, with source blob
`4422141c1a889d56c5de0d0b11cb3f3865ff21f7`.

It uses the actual original coefficient
`A = W.TorsionCoeff n = E[n](Fsep)`,
the original Galois action and real map
`ellipticWeilToTateDual W n hn :
    ellipticTorsionGalRep W n ⟶ tateDual (ellipticTorsionGalRep W n)`.

The original Galois-equivariant `torsionCoeffWeilPairing` is
from `TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/WeilPairing/Basic.lean`,
blob `d54088b59839bf055f1670006127a4d854adaa50`.
Original `torsionCoeffWeilPairing_nondegenerate` proves injectivity,
with exact orientation
  φ(a)(b) = e_n(a,b).
No basis, operator or numerical BSD rank is assigned to create this map.

## 2. The SURJECTIVITY proof, no remaining arithmetic assumption

Fix characteristic-zero local F (or any field with n invertible),
n nonzero, and genuine elliptic W/F.
The ACTUAL original finite torsion-basis source is
`TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/MulByInt/Torsion/Structure.lean`,
blob `843bb6ef86790be5c4728c71655897117ee6a72d`, with
`WeierstrassCurve.nonempty_basis_torsionBy`:
  E[n](Fsep) ≅ (ZMod n)^2.
The original `W.pointCoeffEquiv` identifies this EXACT
geometric n-torsion with `W.TorsionCoeff n` via
`AddEquiv.torsionByCongr`; it is not a different arithmetic
representation. The candidate includes both
`source_geometric_torsion_basis` and
`source_geometric_torsion_equiv`.

In addition, upstream `TauCeti/Algebra/Module/ZMod/Dual.lean`,
blob `e249ada18d28eafffbf4d3c41ee00f166dbe3299`,
already proves the stronger finite character count
`AddEquiv.natCard_addMonoidHom_zmod`:
for a finite group M killed by n,
  #Hom(M,ZMod n) = #M.
Source `TauCeti/FieldTheory/GaloisCohomology/Coefficients.lean`,
blob `a0dcf3d43794f633597b5aef115e27d7dfcc20fe`,
gives `kummerCoeffAddEquivZMod`; and original
`TauCeti/NumberTheory/ClassFieldTheory/MuNRep.lean`,
blob `2d14af1616e26ccee0e04b9897a467ab8bd994f8`, gives
`kummerCoeffEquivMuNRep`. Therefore
  #Hom(E[n],μ_n) = #Hom(E[n],ZMod n) = #E[n] = n².
The first two equalities are source-duality/cardinality arguments;
the original geometric torsion basis independently gives n².
The choice of a primitive n-th root in the additive equivalence is
used ONLY to count the target, not to define the canonical Galois
coefficient pairing or a basis of the representation.

Previously proved genuine Weil nondegeneracy makes φ injective.
Both exact source finite groups have the same cardinality, hence
φ is **surjective**. Therefore
  φ:E[n](Fsep) ≅ Hom(E[n](Fsep), μ_n)
as underlying finite groups; the original source
`pairingToTateDual` makes φ equivariant, and because a bijective
morphism in the category of finite topological Galois representations
has a continuous equivariant inverse, this yields the actual
self-duality of coefficients, with the originally selected
Weil character evaluation φ(a)(b)=e_n(a,b).

The extended isolated candidate adds:
`ellipticTateDual_natCard_eq`,
`ellipticWeilToTateDual_bijective`,
`ellipticWeilTateDualAddEquiv`,
`ellipticWeilTateDualAddEquiv_evaluation`.
The Lean scripts have NOT been elaborated. In particular a source
proof candidate alone is not a kernel-verified Galois-representation
isomorphism. Future replay must check that category morphism and
equivalence use the SAME original `ellipticTorsionGalRep` and
`tateDual`, not merely an isomorphic cardinality proxy.

**Noncircular scope:** The proof is finite torsion algebra and
established elliptic Weil nondegeneracy. Neither analytic rank,
Sha finiteness, a regulator, nor any L-function value is used.

## 3. The local Kummer annihilator theorem: genuine arithmetic proof

Let F be a finite extension of Q_l, E/F an actual elliptic curve,
E^vee/F its dual, n=p^k nonzero, and δ_E and δ_Evee the ACTUAL
connecting maps of the multiplication-by-n Kummer sequences.
For the corresponding true continuous Galois groups write
  A=E[n](Fsep), A^vee=E^vee[n](Fsep).

The true Weil/Poincare pairing identifies A^vee with the Cartier
dual Hom(A,μ_n). The finite local Tate pairing is
  H¹(F,A) × H¹(F,A^vee) -> H²(F,μ_n) -> Q/Z.
The chosen order of its arguments, the cyclotomic Tate twist,
and the local invariant are part of the assertion. The
Tau Ceti normalized trace `h2MuEquivZMod` maps Brauer invariant
a/n to residue a; it is not chosen to fit a Kummer image.

The exact original elliptic Kummer long exact sequence gives
  0 -> E(F)/nE(F) --δ_E--> H¹(F,A)
    --q_E--> H¹(F,E)[n] -> 0
and similarly for E^vee. The source Tau Ceti theorem
`WeierstrassCurve.range_kummerMap` identifies the exact
image of δ_E with the kernel of the coefficient map into
H¹(F,E). We MUST retain the H¹(F,E)[n] quotient,
not replace the entire H¹(E[n]) with E(F)/n E(F).

The ORIGINAL classical local Tate duality theorem for the
ABELIAN VARIETY gives a perfect Pontryagin pairing
  H¹(F,E)[n] × E^vee(F)/nE^vee(F) -> Q/Z.
The Poincare biextension/cup-product compatibility of the two
Kummer connecting sequences gives, with the properly selected
source sign convention,
  <x,δ_Evee(P)>_finite = +/- <q_E(x),P>_abelian.
The sign needs a SOURCE-EXACT formal proof, but vanishing is
unaffected by it.

**Proof of the requested exact equality:** x in H¹(F,A)
annihilates every δ_Evee(P) if and only if the local
abelian pairing of q_E(x) with every P vanishes.
Perfectness of the abelian local pairing says this occurs
if and only if q_E(x)=0. The Kummer exact sequence says
this is equivalent to x in im δ_E. Therefore
  im δ_E = (im δ_Evee)^orth.
The dual argument exchanges E and E^vee. When E is identified
with its dual through its actual canonical principal polarization,
the original finite Weil pairing supplies the needed self-dual
coefficient identification. This is the standard local
Kummer-orthogonality theorem, not a BSD conjecture.

**Primary arithmetic reference:** the published
*The Cassels--Tate pairing and the Platonic solids*
(Journal of Number Theory, DOI 10.1016/S0022-314X(02)00038-0),
Lemma 2.4, states exact annihilator equality for an isogeny and
its dual under local Tate pairing. For the local abelian-variety
pairing see Milne, *Arithmetic Duality Theorems*, Chapter I,
local duality (and the Poincare biextension construction).
No argument here assumes a BSD formula.

## 4. The exact reusable Lean transfer, without hiding the missing arithmetic

NEW general source
`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/LocalKummerAdjointKernel.lean`,
blob `b09e4ad0364ab03b856987a062648ce55ab3343f`,
is independent of the Tau Ceti toolchain and imports pinned Mathlib.

`AdjointKummerData` records the five source objects
  H=H¹(F,E[n]), Q=H¹(F,E)[n],
  P=E^vee(F)/n E^vee(F), V=H¹(F,E^vee[n]), Z=ZMod n
and their true original homomorphisms (quotient map, dual Kummer
connecting map, finite Weil cup and abelian local Tate pairing).
It requires TWO separate arithmetic supplier proofs:
- `connecting_adjunction`, the original signed compatibility
  of Kummer connecting maps with finite and abelian local pairings;
- `abelian_separating`, nondegeneracy of the actual abelian Tate
  pairing on H¹(F,E)[n].

Its theorem `kernel_eq_dualKummerOrthogonal` then proves the
exact subgroup equality via original source kernel:
  ker q_E = {x |∀P, finitePair(x,δ_Evee P)=0}.
It neither includes the desired equality as a data field nor
assumes a nonzero rank or regulator.

The actual source `W.range_kummerMap` has not yet been identified
inside Lean with the `quotient: H -> Q` of the abelian-variety
sequence, and the stated connecting adjunction and abelian local
Tate perfectness have NOT been bound to concrete Tau Ceti types.
Those are the next two proof suppliers, not consequences of the
finite-module `tateDualityPairing_perfect_mixed` alone.

## 5. A second, exact finite-cardinality/isotropy fallback

NEW external-version source
`documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiLocalKummerOrthogonalityCriterion.lean`,
blob `d0ada05d914a30acadf893f3b363a8d0f5788603`,
imports original `TauCeti/LinearAlgebra/FiniteBilinearModule/Orthogonal/Complement.lean`,
blob `7d7d2a80e612f49d971a8551d1a562bbc86a501d`.
It uses the ORIGINAL theorems
`IsNondegenerate.card_mul_card_orthogonalComplement` and
`IsIsotropic.isLagrangian_of_card_sq_eq` to establish
  K = (Kdual)^orth
provided the finite cohomological pairing is really symmetric
and nondegenerate, the REAL Kummer subgroups pair trivially,
and their exact cardinality product is that of H¹.
The two arithmetic conditions are explicitly named as
conditions, never chosen numerically from desired BSD rank.
The self-dual Kummer case uses isotropy plus |K|²=|H¹|.

**Crucial sign:** the Weil pairing on E[n] is alternating,
while the cup product of two degree-one classes is
graded-anticommutative. Their composition is symmetric for
the identified self-dual H¹ pairing. The source comparison must
prove BOTH sign relations before reading a local Tate pairing
as `FiniteBilinearModule`, which stores a symmetric pairing.

This fallback is mathematically equivalent at the finite
cohomology level, but its pair-vanishing and local-order inputs
are not supplied by mere Weil nondegeneracy; for the actual
arithmetic proof the adjoint kernel route in §4 is sharper.

## 6. Independent hostile finite diagnostics: not arithmetic proof

For each n in 1,2,3,4,5,7,8, an exact-integer synthetic
symplectic module (Z/n)² with e((a,b),(c,d))=ad-bc
has n² distinct Weil characters. Separately, for the
symmetric hyperbolic pairing B((a,b),(c,d))=ad+bc,
the axis K={(a,0)} has K=K^orth and |K|²=|(Z/n)²|.
These are finite mathematical consistency tests only:
synthetic modules, not actual E[n], local continuous cup
products, Kummer images, or Lean/kernel verification.

The hostile controls reject: discarding the H¹(F,E)[n] quotient,
assuming Weil nondegeneracy proves abelian Tate duality,
replacing a signed Poincare connecting adjunction with a
chosen pairing, using a synthetic Lagrangian as the genuine
local elliptic Kummer image, or transferring nonarchimedean
local duality to the real p=2 place without Tate modification.

## 7. Remaining genuine derived Selmer regulator obligations

The source-theoretic finite Weil bijection is closed by
ordinary mathematics at its stated arithmetic scope.
For kernel acceptance, separately replay the added theorem
on Tau Ceti v4.36.0-rc1 and the standalone generic Mathlib
theorem on grwtsk/math Lean v4.34.1. Do not change either
toolchain or root imports to bypass compatibility.

For Kummer orthogonality, construct/verify source-typed
local abelian Tate pairing, its Poincare/Kummer connecting
adjunction, and the canonical GalRep/existing H¹ comparison.
Then prove actual p-power transition naturality, reverse
outside-S good reduction unramified/Kummer equality,
the real p=2 archimedean correction, derived Rlim/Milnor
comparison and Poitou--Tate on the global Selmer mapping
fiber. Preserve the original local H0 corrections and
untruncated H²(U_v)=H¹(F,E) Weil--Chatelet residue before
good truncation.

A noncircular bridge from an actual p-adic derived Selmer
regulator to the REAL Neron--Tate lattice, the COMPLEX
Hasse--Weil central L-jet and all Sha/Tamagawa/period/torsion
BSD-II factors remains OPEN.
