# Continuous elliptic Tate cochains: arithmetic supplier and three comparison frontiers

Date: 2026-11-02. Local mathematical/source attribution: grwtsk contributors, with original
Tau Ceti contributors' Apache-2.0 upstream mathematics and APIs explicitly preserved.

**Disposition: bounded source proof candidates.** NOT_RUN: Lean parsing/elaboration,
Lean compilation, independent fresh kernel replay, transitive axiom audit, compatible
upstream adapter build. No scheduler/runner or CI was invoked. These source additions
are NOT a verified continuous derived Selmer complex, a Tate-duality proof, a derived
p-adic regulator, or a proof of BSD. No new mathematical axioms, sorry, or admit are
introduced by the added declarations.

## 1. Immutable actual coefficient supplier

External upstream: TauCetiProject/TauCeti
`2bdb755239d3bd84760e99bc83166bdf7cc75a6b`, original authors The Tau Ceti
contributors, Apache-2.0, toolchain `leanprover/lean4:v4.36.0-rc1`.

- `TauCeti/Algebra/Module/Torsion/TateModule.lean`, blob
  `62e7fac1cb918662dde0e644e61060d4428e9942`:
  `TateModuleLevel`, `TateModule.mk`, `proj`, `proj_succ`,
  `continuous_iff`, `continuous_map_apply`.
- `TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Coefficients.lean`,
  blob `d56decb915934d38ff4ed5271ed59c73953a89e1`:
  `W.PointCoeff=E(Ksep)` with actual discrete continuous absolute Galois action,
  `W.TorsionCoeff m`, `W.torsionCoeffIncl m`.
- `TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean`,
  blob `9596754d63dfddae05765acc47fab267df58da7e`:
  `C1,C2,d0,d1,d2` and their square-zero and continuity proofs.
- `TauCeti/AlgebraicGeometry/EllipticCurve/TateModule/Galois.lean`,
  blob `653008eddc52e0ddbe0f33c5beedddf14a0533eb`:
  genuine continuous geometric elliptic Tate representation and projection action.
- `TauCeti/AlgebraicGeometry/EllipticCurve/TateModule/WeilPairing.lean`,
  blob `c2e8205ffc8d30c66c74949e51517e4660ace058`:
  genuine continuous nondegenerate Weil pairing to the Tate twist.

The root `grwtsk/math` remains pinned to Lean v4.34.1 and Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`; none of these Tau Ceti
imports was installed into the root. Do not interpret code in
`documentation/adapters` as a working compatible Lean module.

## 2. First mathematically exact bridge: continuous cochain carriers

The new isolated external adapter source
`documentation/adapters/tauceti-elliptic-selmer-fiber/TauCetiContinuousTateCochains.lean`
uses the ACTUAL `TateModule p W.PointCoeff` over the separable closure,
not `TateModule p W.toAffine.Point` (the rational point Tate module).
For any topological space X and abelian coefficient group A, it constructs
a candidate of the following type:

  C(X, TateModule p A) ~=
    { f_n : X -> A[p^n] | f_n locally constant,
                              p * f_(n+1) = f_n }.

The forward map is source `TateModule.proj` composed with the cochain;
the inverse is source `TateModule.mk` on every point of X. Both
inverse equations follow from `proj_mk`/`TateModule.ext`, and
continuity is *exactly* the upstream `TateModule.continuous_iff`.
No Mittag-Leffler or derived-limit claim is needed for this carrier
equivalence. Specializing X to the true absolute Galois group G_K and
G_K x G_K gives the original continuous degree-one and degree-two
cochain C1/C2 carriers, rather than abstract finite-dimensional proxies.

The actual source Galois action on `W.PointCoeff` is transported by
`TateModule.map`; its finite projection is literally the Galois
action on E[p^n]. An additional candidate proves joint continuity
using the source `TateModule.continuous_map_apply` and the original
discrete continuous point action. Restriction along a given continuous
group homomorphism commutes with all coordinates. **The true**
local-to-global absolute Galois map, field base change, local coefficient
transport, full inhomogeneous differentials, and chain-map naturalities
must still be constructed in compatible upstream source: they are NOT
obtained by writing a generic pullback.

The existing grwtsk finite-level local Kummer tower uses indices
E[p^(n+1)], not E[p^n]; compare its level n to the Tate module's
projection at n+1. The cochain carrier theorem does not identify
`lim` with `Rlim` or prove any cohomology comparison. A genuine
Milnor sequence and the appropriate lim^1/Mittag-Leffler checks remain
required, keeping the higher local Weil--Chatelet residue of the
untruncated Kummer cone visible.

## 3. Restricted product: a proved algebraic reduction, arithmetic input OPEN

New standalone grwtsk/math source:
`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/SelmerRestrictedProductComparison.lean`.

Fix finite S containing the real place, p and the bad primes. Let the
actual global H^1 be H, local H^1 be L_v, res_v be genuine restrictions,
K_v the Kummer local subgroup, and U_v the inertia-unramified subgroup.
The source proves at the algebraic H^1 level:

  if for v outside S, K_v <= U_v,
  then Sel(all Kummer) <= Sel(Kummer at S, unramified outside S).

If the ADDITIONAL arithmetic reverse inclusion U_v <= K_v is supplied
for every v outside S, the two Selmer subgroups coincide. The source
also supplies an exact hostile example H=L=Z, one outside-S place,
K=0, U=L, where the one-sided inclusion holds but equality fails.
The latter is a logical counterexample, not an elliptic example.

The upstream actual good-reduction theorem
`TauCeti/AlgebraicGeometry/EllipticCurve/GaloisCohomology/Unramified.lean`,
blob `27bdfb672e46e81d8df33f12d74ec35160c9bf68`, proves only
`range_kummerMap_le_unramifiedTorsionCohomology` under the explicit
good-reduction and residue-invertibility hypotheses. To instantiate
the reverse inclusion, prove the actual smooth model's good-reduction
specialization and formal-group p-divisibility at v != p, together
with finite-residue-field Lang/Kummer identification. Independently
construct the cochain restricted product, verify its topology and
restriction naturalities, and compare finite-S with all-place fibers.
The algebraic H^1 inclusion is NOT itself that derived quasi-isomorphism.

## 4. Archimedean C2: exact odd-p averaging and p=2 obstruction

New standalone grwtsk/math source:
`GRWTSK/CategoryTheoryHomologicalAlgebra/HomologicalAlgebraInCategoryTheoryDerivedCategoriesAndFunctors/ArchimedeanInvolutionTateBoundary.lean`.

For the order-two conjugation operator c on an abelian module M,
let N=1+c. The two Tate-cohomological obstructions are

  even: M^(c=1) / N M,
  odd:  ker(N) / (c-1) M.

Under an explicit bijectivity hypothesis on multiplication by two,
the candidate proves from the original elements:

  c x = x  ->  x = y + c y,
  c x = -x ->  x = c y - y.

Choose y with 2y=x. Doubling injectivity forces c y=y or c y=-y
respectively, making the norm or boundary identity exact. For
M=Z/2 and c=id, both quotients are nonzero; the module provides
a hostile p=2 example, NOT an actual E/R assertion. This proves
the elementary odd-p averaging step without suppressing
H^0(R,T_pE) or any real-place orientation convention.

Outstanding in actual elliptic cochains: construct the real
absolute Galois action, show the correct local coefficient module is
uniquely two-divisible when p is odd, match ordinary/Tate-modified
cochain conventions, and keep real-place H0 at every level.
At p=2 do NOT apply the averaging proof.

## 5. Local Tate duality: current precise external mathematical gate

The authentic Weil pairing identifies E[p^n] with the Tate-twisted
dual at each level, and `tateModuleWeilPairing` supplies the
inverse-limit Galois-equivariant pairing. That is **NOT** yet a
local Galois cohomology perfect pairing. The next distinct theorem is,
for each finite nonarchimedean completion F=Q_v, actual cup product
and invariant normalization:

  H^i(F,A_n) x H^(2-i)(F,A_n^vee(1))
       -> Q_p/Z_p,

including perfectness, functoriality under n-transitions, and exact
orthogonality of the E and E^vee Kummer local-condition subgroups.
Then prove the correct compact/discrete `T_pE` versus
`T_pE^vee(1)` duality and the global Poitou--Tate compatibility.
For elliptic E, principal polarization permits self-duality only
with its actual Weil twist/sign normalization.

No scanned Tau Ceti source provides this full elliptic local
Tate-duality and Poitou--Tate package. The existing Weil pairing
and finite Galois cohomology APIs are partial suppliers only.
Do NOT choose a perfect pairing as data and declare arithmetic
duality proved.

## 6. Boundary, acceptance, and next execution

Existing grwtsk dependencies preserved unchanged:
`LocalPointKummerFiber.lean`,
`LocalPointKummerTower.lean`,
`LocalKummerGoodTruncation.lean`,
`LocalKummerGoodTruncationTower.lean`,
`GlobalKummerPointFiberAssembly.lean`,
`GlobalSelmerFiberTower.lean`.
In particular the full local cone generally has
H^2=H^1(F,E), and only the canonical good truncation
preserves H^0/H^1 while removing higher degrees.

Necessary acceptance: compile the two standalone grwtsk modules
under pinned v4.34.1 / Mathlib, and the isolated actual Tau Ceti
adapter in its pinned v4.36.0-rc1 environment. Then fresh
kernel replay, per-declaration `#print axioms`, transitive
dependency audit, and true cochain/derived comparison. No successful
build or kernel statement is asserted here.

The regulator-facing cohomological goal is still a source-defined
quasi-isomorphism from the derived inverse limit of the compatible
GOOD-TRUNCATED point-corrected Kummer/Selmer fibers to the
correct restricted, archimedean, locally Tate-dual T_pE Selmer
complex, with H^1 retaining the Kummer completion and T_p Sha
obstruction. Only then should the existing generic truncated
Bockstein deformation be instantiated from actual p-adic Selmer
cochain differentials. Even a completed p-adic regulator is not the
unproved general arithmetic-to-COMPLEX Hasse--Weil central-jet
comparison or the full BSD-II leading coefficient.

## References

- Jan Nekovar, *Selmer complexes*, Asterisque 310 (2006), sections
  6.1, 6.7, 7.8, 11.2; https://www.numdam.org/item/AST_2006__310__R1_0/
- Silverman, *The Arithmetic of Elliptic Curves*, second edition,
  chapters III.7, X.4, and VII (good reduction).
- Neukirch--Schmidt--Wingberg, *Cohomology of Number Fields*,
  second edition, continuous Galois cochains and local duality.
- Howard, *Derived p-adic heights and p-adic L-functions*,
  arXiv:1202.6343 (2012).
- Sano, *Derived Bockstein regulators and anticyclotomic
  p-adic Birch and Swinnerton-Dyer conjectures*, arXiv:2308.08875 (2023).
