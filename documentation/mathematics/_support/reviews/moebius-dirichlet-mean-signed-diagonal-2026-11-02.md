# Diagonal-aware Dirichlet character mean signed cross: exact original Möbius source

Research date: 2026-11-02 (America/Los_Angeles).
Baseline grwtsk/math/main inspected: `a8737aa9a70d87fa1c9319e6f0c884b8f12674f6`.
Pinned Lean: `leanprover/lean4:v4.34.1`. Pinned Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Local mathematical attribution: grwtsk contributors.
All newly authored Lean proof bodies SOURCE_PROOF_CANDIDATES; compilation, full import closure, expected types, fresh independent kernel and transitive axioms NOT_RUN. Original RH and every Dirichlet GRH claim OPEN.

## 1. Source exactness and the objective

The requested improvement over the previously published complete-family energy upper is for the **SIGNED** original offdiagonal Hermitian Gram, not the nonnegative energy. Let N=floor(exp T), q>=1 and
  X_chi(T)=familyCross(dirichletCharacterCoefficients chi,T)
           =Re sum_(m,n<=N,m!=n) mu(m)*chi(m)*mu(n)*conj(chi(n))*K_T(m,n),
with the ORIGINAL r_n(u) born at log n and K_T(m,n)=int_0^T r_m(u)r_n(u)du.

Let
  Diag_unit(q,T)=sum_(n<=N,gcd(n,q)=1)mu(n)^2*K_T(n,n).
The exact mean diagonal is not the full pickupDiagonal if q is composite: nonunit indices are annihilated by EVERY genuine Dirichlet character. No diagonal n>N or signed m=n is created.

Earlier `MoebiusDirichletResidueFibreCapacity.lean` blob `d02622fb2d434402cec3316e30b77b0fd81d4acf` supplied
  (sum_chi E_chi(T))/phi(q) <= (floor(N/q)+1)*pickupDiagonal(T).
It discarded the unit restriction too early for the sharper signed source.

Existing exact-source candidates consumed:
- `MertensPrimitive.lean` blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`;
- `MoebiusLFunctionFamilyInverse.lean` blob `2b9c2b556de587db611478b7724c9205db90fd3b`;
- `MoebiusLFunctionHermitianPickup.lean` blob `0643134718a73f65f1ca01f2db0804b4883676b4`;
- `MoebiusLFunctionComplexGramClosure.lean` blob `ff96f81e0e164f00e99ad903171af01f33816ff7`;
- `MoebiusDirichletResidueParseval.lean` blob `152ef7002c566bcca14ec8aac8c027c523693347`;
- `MoebiusResidueFibreArithmetic.lean` blob `d8ed2983c2090b17c972e440cdd7fee6f4e7961c`;
- `GramDiagonalBound.lean` blob `aca9ab5260453b13a3503f3166aef6f59efcf4ee`, original `pickupDiagonal_eq_integral_density` and quadratic payment;
- `MoebiusOriginalGramRootFloorSuppliers.lean` blob `efbf49d9d0be6f59dc165ec715b14b0f12207d12`, original `fixedGcdRatio_proof` CANDIDATE.

## 2. The standalone finite sign-preserving lemma

For any finite complex vector (z_i), D=sum_i |z_i|² >=0. The pinned
  Mathlib/Algebra/Order/Chebyshev.lean:sq_sum_le_card_mul_sum_sq
and finite norm triangle inequality imply
  |sum_i z_i|² <= (#S)*D.
Subtract D **before** applying any occupancy allowance:
  -D <= |sum_i z_i|²-D <= (#S-1)*D
when S is nonempty, and also the equivalent (#S<=B+1) upper with B>=0 for empty S.

For the literal positive index fiber
  S_(q,a,N)={n in [1,N] | (n:ZMod q)=a},
the prior standalone quotient injection gives
  #S_(q,a,N)<=floor(N/q)+1.
Consequently for any complex f(n):
  |sum_(n in S_a)f(n)|²-sum_(n in S_a)|f(n)|²
     <=floor(N/q)*sum_(n in S_a)|f(n)|².

New Mathlib-only `MoebiusResidueSignedFibreArithmetic.lean` proves this finite bound as an authored Lean SOURCE CANDIDATE, with no import of the physical RH source. It also records the lower bound -D from nonnegative norm-square.

## 3. Preserve the unit diagonal exactly in the family source

Define the original unit-restricted diagonal density and integrated cost
  d_unit(q,T,u)=sum_(n<=N,IsUnit(n mod q))mu(n)²*r_n(u)²,
  D_unit(q,T)=sum_(n<=N,IsUnit(n mod q))mu(n)²*K_T(n,n).
The original complex residue waves satisfy
  |R_a(u)|² <=(floor(N/q)+1)*sum_(n in S_a)mu(n)²*r_n(u)².
Summing ONLY over unit residue classes keeps the same unit restriction
  sum_(a unit)|R_a(u)|² <=(floor(N/q)+1)*d_unit(q,T,u).

The finite source wave and diagonal-density functions are continuous, so exact finite interval-integral linearity gives
  sum_(a unit) E_a(T) <=(floor(N/q)+1)*D_unit(q,T), T>=0.

Separate **exact** original identity:
  sum_(chi mod q) familyDiagonal(chi,T)
     =phi(q)*D_unit(q,T),
because the pinned character orthogonality specialized to n=n has
  sum_chi |chi(n)|²=phi(q) if n is a unit modulo q, else 0.
The complete source Hermitian Gram has exactly the diagonal plus the offdiagonal cross for each chi, with both original ordered orientations, so the existing finite family Parseval yields
  MeanCross(q,T):=(sum_(chi mod q)X_chi(T))/phi(q)
     =sum_(a unit)E_a(T)-D_unit(q,T), T>=0.

Combining with positivity and the previous row inequality gives the requested **two-sided signed** result:
  -D_unit(q,T) <= MeanCross(q,T)
       <=floor(N/q)*D_unit(q,T)
       <=2*floor(N/q)*T², T>=0, q>=1.

The upper coefficient is floor(N/q), NOT floor(N/q)+1. This comes from exact diagonal subtraction. The classical original pickupDiagonal bounds D_unit from above, but is not substituted into the identity before the subtraction. All complex character phases are kept until applying orthogonality; no real-only coefficient replacement is made.

New `MoebiusDirichletMeanSignedCross.lean` authors the full source-candidate chain: unit diagonal density and integral, unit-residue reindex and occupancy, full Hermitian diagonal/offdiagonal partition, character coefficient diagonal orthogonality, exact mean signed ledger, two-sided signed bound and explicit quadratic allowance.

## 4. All-positive-rate corollary for a growing modulus regime

At the previously chosen SINGLE original gcd cutoff D_*(T)=max(1,floor(exp(T-sqrt T))) and T>=4, the prior fixed-ratio candidate proves N(T)/D_*(T)<=2exp(sqrt T).
For ANY modulus q>=D_*(T):
  floor(N(T)/q) <= N(T)/q <=N(T)/D_*(T) <=2exp(sqrt T).
Therefore
  MeanCross(q,T)<=4*T²*exp(sqrt T), q>=D_*(T),T>=4.

For each epsilon>0, take
  R_epsilon=max(4,16/epsilon²), C_epsilon=64/epsilon².
For T>=R_epsilon, sqrt T<=epsilon*T/4 and
  T<=(4/epsilon)*exp(epsilon*T/4) by x<=exp x.
Hence
  4*T²*exp(sqrt T)
   <=(64/epsilon²)*exp(3epsilon*T/4)
   <=C_epsilon*exp(epsilon*T).
The new `MoebiusDirichletMeanSignedFixedCutoff.lean` authors this concrete scalar theorem and source consumer. C and R do not depend on the modulus q, but the condition q>=D_*(T) still means q MUST GROW with the unbounded horizon T. It would be incorrect to infer `PrimitiveDirichletFamilyLowGcdEveryRate` for any fixed primitive character or Dirichlet GRH.

This is a family-mean analogue of the prior scalar all-positive-rate payment, not a new GRH analytic return or a new signed arithmetic cancellation.

## 5. Independent diagnostic checks actually executed

The arithmetic fiber cap and generic complex signed-square inequality were checked independently for q in {1,2,3,4,5,8,13,17,31}, N in {0,1,2,5,9,12,20,25,33,48,70,110}; all **1,008 individual (q,N,residue) cases** passed, including empty and composite/nonunit fibers. The random-looking complex vectors tested on each nonempty fiber were w_n=(1+n%3)+i(1-n%5); this is finite arithmetic, not the physical source. One unit fiber with exactly floor(N/q)+1 indices and equal coefficients saturates the signed-square bound.

Independently, using 55-digit mpmath, actual integer sympy Möbius, the original birth-gated physical causal K_T(m,n) closed integral, and the complete authentic character tables for q in {1,5,8,17}, the signed character family means were computed directly from all Hermitian ordered offdiagonal pairs and independently from unit residue-pair packets. Nine scenarios passed the identity and both signed bounds with maximum absolute identity residual below 4e-55. Examples:

| q | N | floor(N/q) | Unit diagonal D_unit | Mean signed X | New upper floor(N/q) D_unit |
|---|---:|---:|---:|---:|---:|
| 5 | 12 | 2 | 2.9435174320 | 0.3110047658 | 5.8870348640 |
| 8 | 12 | 1 | 2.4455954075 | 0.0012799175 | 2.4455954075 |
| 5 | 25 | 5 | 5.7679493686 | 1.2262910695 | 28.8397468431 |
| 17 | 12 | 0 | 2.9763389826 | ~0 | 0 |
| 17 | 25 | 1 | 5.9465092014 | 0.0141887684 | 5.9465092014 |

At q=17,N=12, the mean cross is numerically zero to ~1e-55 while the MAX individual character cross has magnitude about 3.145677. Therefore the all-character mean equality does NOT control an individual character.

The proposed pure scalar all-positive-rate witness was numerically checked for epsilon in {0.1,0.25,0.6,1,2,3}, at T=R,R+1,1.5R,2R. All 24 comparisons passed in logarithmic form; they are not certified intervals.

NO finite test is a Lean proof, an infinite-horizon theorem certificate, an axiom audit, or evidence that a fixed-character GRH statement has been proved.

## 6. Formal acceptance, source discipline and remaining frontier

Candidate modules:
- `MoebiusResidueSignedFibreArithmetic.lean` — Mathlib-only; generic complex Cauchy–Schwarz minus exact diagonal, residue quotient cardinality consumer.
- `MoebiusDirichletMeanSignedCross.lean` — the actual original causal unit-diagonal ledger and signed family average.
- `MoebiusDirichletMeanSignedFixedCutoff.lean` — growth regime q>=D_*(T), explicit every-positive-rate family MEAN upper.
- `MoebiusDirichletMeanSignedAcceptance.lean` — passive #check/#print axioms, not executed.

Independent acceptance DAG: first compile Mathlib-only signed-fiber source, then actual unit-diagonal/Parseval transfer, then fixed cutoff/scalar source. Explicit expected types and axioms must be verified against complete pinned imports, then a fresh independent kernel replay, and ONLY then transitive axiom audit. Existing upstream `MoebiusDirichletResidueParseval`, `MoebiusLFunctionComplexGramClosure`, `MoebiusOriginalGramRootFloorSuppliers` remain separately unverified proof candidates.

Status at publication: Lean parsing NOT_RUN; expected types NOT_RUN; full import compilation NOT_RUN; fresh independent kernel NOT_RUN; transitive axioms NOT_RUN. No native host/toolchain present in this conversation; no Noe runner, scheduler, GitHub action, root import change, or force update. No newly authored sorry/admit/axiom/unsafe declarations.

Remaining mathematical target: **individual fixed primitive-character one-sided signed low-gcd bound**, `PrimitiveDirichletFamilyLowGcdEveryRate`, plus the causal-to-Mertens-prefix return and actual conductor/gamma/pole/Mellin/explicit-formula GRH bridge. Original `PlainLowGcdEveryRateDyadic` and RH remain OPEN. Higher-degree L families still need coefficient-weighted high-gcd estimates and genuine local-to-global analytic identities.

Possible next arithmetic refinement: `floor((N-1)/q)` replaces `floor(N/q)` when N>=1, by translating the positive fiber to n-1 in [0,N-1] before quotient injection. That tighter occupancy bound would improve N divisible by q but still only bound a complete-family mean. It is a paper observation, not a Lean theorem in this publication.
