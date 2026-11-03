# General residue-fiber occupancy and original Möbius Dirichlet-family mean energy

Research date: 2026-11-02, America/Los_Angeles.
Baseline main inspected: `e7753c12896b72ed2fe5ddc1945f16e769aeda56`.
Local mathematical attribution: grwtsk contributors. Pinned Lean: v4.34.1; Mathlib: d13f23b723b8a846827a245b89c10fc7d3f11612.
**Status:** New Lean proof bodies are SOURCE_PROOF_CANDIDATES. Parsing, expected-type elaboration, complete import compilation, fresh kernel replay and transitive axiom audit NOT_RUN. No claim of RH, Dirichlet GRH or individual-character signed cancellation.

## 1. Exact source dependencies inspected

The current repository has the immutable original arithmetic/physical source in `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean` (blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`) and the actual complex family in `MoebiusLFunctionHermitianPickup.lean` (blob `0643134718a73f65f1ca01f2db0804b4883676b4`).

The preceding `MoebiusDirichletResidueOrthogonality.lean` (blob `82698de228e06569e2f9dfe5223eb2056d09bc8d`) defines the literal real-source complex residue wave
  R_(q,a,T)(u) = sum_(1<=n<=N(T), (n:ZMod q)=a) (mu(n):Complex)*pickupResponse(n,u).
`MoebiusDirichletResidueParseval.lean` (blob `152ef7002c566bcca14ec8aac8c027c523693347`) authors the exact finite character/integrated identity
  sum_(chi:DirichletCharacter Complex q) E_chi(T)
    = phi(q)*sum_(a:ZMod q, IsUnit a) int_0^T |R_(q,a,T)(u)|²du.
The sum is over **all** characters, not primitive-only; nonunit source residue waves are present in the inventory but annihilated by true characters.

The original `GramDiagonalBound.lean` (blob `aca9ab5260453b13a3503f3166aef6f59efcf4ee`) has the source-specific identity
  pickupDiagonal(T)=integral_0^T sum_(n<=N)mu(n)^2*pickupResponse(n,u)^2du
and its original nonnegative/quadratic bound
  0<=pickupDiagonal(T)<=2*T² for T>=0.
All preceding GRWTSK proof files have separate kernel/axiom acceptance status; none is promoted by the new source publication.

## 2. Independent finite arithmetic: one residue class occupies at most floor(N/q)+1 indices

Let q>=1, a:ZMod q and S_(q,a,N)={n in {1,...,N} | (n:ZMod q)=a}. For n in S, define f(n)=n/q (natural quotient). Its image lies in {0,...,floor(N/q)} by monotonicity of natural integer division.

If m,n in S have f(m)=f(n), they also have m%q=n%q by `ZMod.natCast_eq_natCast_iff'`. The **exact Euclidean decomposition**
  m = (m%q)+q*(m/q),
  n = (n%q)+q*(n/q)
gives m=n. Thus f is injective on S, and the precise finite cardinal comparison gives
  #S_(q,a,N) <= floor(N/q)+1.                                      (A)

The new standalone Mathlib-only source `MoebiusResidueFibreArithmetic.lean` authors actual candidate proof bodies `residueFibre_quotient_injective`, `residueFibre_card_le_quotient_succ`, and `residueFibre_card_le_one_of_large_modulus`. The lemma `Finset.card_le_card_of_injOn` is pinned in `Mathlib/Data/Finset/Card.lean`, and `Nat.mod_add_div` is a core Nat identity. This arithmetic file imports NO existing GRWTSK RH/analytic source and can be checked first.

The upper bound is intentionally simple, not always sharp: for N divisible by q it exceeds the actual maximum fiber size by 1. An optional future sharpening is `ceil(N/q)`, which is not needed for the requested family mean bound.

## 3. Actual ORIGINAL complex source Cauchy–Schwarz and full residue partition

For the original complex-cast source values w_n(u)=mu(n)*r_n(u), without changing any Möbius sign or physical birth support, the pinned complex norm triangle and `sq_sum_le_card_mul_sum_sq` from `Mathlib/Algebra/Order/Chebyshev.lean` give
  |R_(q,a,T)(u)|²
   <= #S_(q,a,N) * sum_(n in S_(q,a,N)) |w_n(u)|²
   <= (floor(N/q)+1)*sum_(n in S_(q,a,N)) mu(n)^2*r_n(u)^2.       (B)

Every index n<=N lies in **exactly one** residue class. The source `sum_residueFibre_indexSquare` records that exact finite Fubini/reindex identity. Dropping the nonunit residue contribution only from a nonnegative upper source yields the pointwise inequality
  sum_(unit residues a) |R_(q,a,T)(u)|²
   <= (floor(N/q)+1) * sum_(n<=N)mu(n)^2*r_n(u)^2.              (C)

This argument uses no arbitrary Gram model or unproven sign cancellation. The complex norm is taken AFTER forming the actual signed residue wave, and the right side is the already-published original μ² diagonal source.

## 4. Integrate and connect to the exact Dirichlet family mean

The original finite birth-gated pickup responses are continuous at positive source indices (as established in the repository's causal physical Gram module); hence the finite residue-wave squared norms and original diagonal density are interval integrable. For T>=0, pinned `intervalIntegral.integral_mono_on`, `integral_finsetSum` and `integral_const_mul` integrate (C). The existing `pickupDiagonal_eq_integral_density` identifies the resulting positive original diagonal.

The preceding character Parseval identity then gives the exact **candidate** all-character family mean upper:
  sum_(chi mod q) familyFiniteResponseEnergy(chi,T)
   <= phi(q)*(floor(N(T)/q)+1)*pickupDiagonal(T)
   <= phi(q)*(floor(N(T)/q)+1)*2*T².                            (D)

Because q>=1 implies phi(q)>0, we may divide by phi(q) without changing the inequality:
  (sum_(chi mod q) familyFiniteResponseEnergy(chi,T))/phi(q)
    <=2*(floor(N(T)/q)+1)*T².                                   (E)

New additive source `MoebiusDirichletResidueFibreCapacity.lean` authors explicit proof candidates for `originalResidueWave_norm_sq_le_card`, `originalResidueWave_norm_sq_le_capacity`, `sum_residueFibre_indexSquare`, `unitResidueWaveDensity_le_occupationDiagonal`, `unitResidueEnergy_le_occupationDiagonal`, `allCharactersEnergy_le_occupationQuadratic`, `meanCharacterEnergy_le_occupationQuadratic` and the specialization `meanCharacterEnergy_le_quadratic_of_largeModulus`.

When q>N(T), N/q=0 and this reproduces the preceding exact large-modulus mean allowance 2*T², which was already a published source proof candidate.

## 5. Noncircular frontier and limitations

For FIXED q as T grows, floor(e^T/q)+1 is exponential; this is not a fixed-character GRH-strength estimate. If q=q(T) is large enough for N(T)/q(T)=exp(o(T)), (E) yields a subexponential all-positive-rate **complete-family mean**. This does not bound any individual primitive χ uniformly unless its character-family cardinal cost is also controlled and the actual signed/arithmetic source is addressed. No conclusion for fixed χ follows from varying q with T.

The genuine remaining target is `PrimitiveDirichletFamilyLowGcdEveryRate`, a one-sided signed **individual-character** estimate, plus the causal-energy-to-prefix and source-specific analytic Mellin/explicit-formula conductor/gamma/pole/zero return. Ordinary RH and all Dirichlet GRH conclusions remain OPEN.

A further paper corollary, not formalized in this publication: summing (B) only over the UNIT residues before dropping the nonunit diagonal improves (D) to a unit-restricted original diagonal. Subtracting the exact character-average source diagonal would then give a refined mean signed off-diagonal cross upper with occupancy coefficient `floor(N/q)`. This requires a new source-bound averaged diagonal ledger; it is not asserted as a Lean theorem.

## 6. Independent finite diagnostics actually performed

Exact integer fiber-cardinality enumeration: 99 pairs with q in {1,2,3,4,5,8,13,17,31} and N in {0,1,2,5,9,12,20,33,48,70,110}. All satisfy #S<=floor(N/q)+1, including N=0, q=1, and nonunit composite residues. The optional sharper ceil(N/q) bound also passed these 99 tests but is not proved in the source.

Original physical-energy checks: actual ordinary sympy integer Möbius and the true analytically integrated birth-gated causal Gram at T=log N, character families q=5 (order-four cyclic), q=8 (Klein-four, nonunits explicitly zero), and q=17 (order-sixteen cyclic), N=12 and N=25, with 45-digit mpmath. The mean complete-character energy matched the residue Gram projector within 1.41e-45 absolute in all six tests. Representative observed values:

| q | N | Max actual fiber | Allowed floor(N/q)+1 | Mean family E | Allowed occupancy × original diagonal |
|---|---|---|---|---|---|
| 5 | 12 | 3 | 3 | 3.254522197811306 | 8.929016947817889 |
| 8 | 12 | 2 | 2 | 2.4468753249678485 | 5.952677965211926 |
| 17 | 12 | 1 | 1 | 2.976338982605963 | 2.976338982605963 |
| 5 | 25 | 5 | 6 | 6.994240438120182 | 35.68490977024512 |
| 8 | 25 | 4 | 4 | 4.782431521493876 | 23.78993984683008 |
| 17 | 25 | 2 | 2 | 5.960697969832800 | 11.894969923415040 |

These are floating diagnostics, not interval-certified enclosure, universal asymptotic proof, or pinned Lean kernel evidence.

## 7. Formal verification and source discipline

New source modules remain SOURCE_PROOF_CANDIDATES with no accepted compiler/kernel evidence. A separately authored passive acceptance module lists the requested `#check` and `#print axioms` commands but has not run them.

Verification facets must be independent and source-bound:
  Lean parsing NOT_RUN;
  expected declaration type/universe check NOT_RUN;
  complete pinned GRWTSK and Mathlib imports NOT_RUN;
  fresh independent kernel replay NOT_RUN;
  transitive axiom/sorry/unsafe audit NOT_RUN.

No local lean/lake/elan or reviewed Noe native runner is available in this tool host. No native command, scheduler, GitHub action or Noe resource override was dispatched. Publication is additive on the existing repo main with nonforce expected-head lease, no root-import changes and no toolchain/Mathlib pin modifications.

No original RH, Dirichlet GRH, or higher-degree L-family zero-free statement is resolved by (E).
