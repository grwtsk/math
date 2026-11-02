# Sharp residue-fiber occupancy and improved Dirichlet mean signed-cross return

Research date: November 2, 2026 (America/Los_Angeles).
Attribution: grwtsk contributors; upstream Mathlib retains original attribution.
Live repository snapshot inspected: `grwtsk/math/main` commit `2e864e3514ba43426d80b245933a31508dbe4c3d`.
Environment pins unchanged: Lean `leanprover/lean4:v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Mathematical status: exact finite proof arguments with NEW authored Lean proof-candidate bodies; parsing/elaboration, pinned import compilation, fresh independent kernel and complete transitive axiom audit NOT_RUN. RH and Dirichlet GRH remain OPEN.

## 1. Live source discovery: the prior objective was already published by another writer

The earlier requested diagonal-aware all-character signed mean bound is not a remaining unworked target. On the latest main, source files and issue #1566 comment #6590840926 establish an additive source publication at `838501a1dca6dd4026e736923a8cc4cf907e1b1d`:

- `MoebiusResidueFibreArithmetic.lean`, blob `d8ed2983c2090b17c972e440cdd7fee6f4e7961c`, gives the coarse quotient injection `n↦n/q` and `#fiber≤floor(N/q)+1`.
- `MoebiusResidueSignedFibreArithmetic.lean`, blob `0692631728b95319edb50e32a3569e3035b8a368`, gives the general finite complex Cauchy–Schwarz signed square with EXACT diagonal subtraction.
- `MoebiusDirichletMeanSignedCross.lean`, blob `4e4260e695ad30e3a0d9f04a6a6c5a90b4b19e32`, establishes in source-candidate form the exact unit-restricted diagonal ledger and
  `-D_unit≤meanSignedCross≤floor(N/q)*D_unit≤2floor(N/q)T²` for q>=1,T>=0.
- `MoebiusDirichletMeanSignedFixedCutoff.lean`, blob `abcaa68aab3b71a5a4fe908ddb980611f20be9bd`, gives a source-candidate all-positive-rate mean bound when q>=the same `D_*(T)=max(1,floor(exp(T-sqrt T)))`. It is **a varying-modulus family mean**, not a fixed-character GRH result.
- `MoebiusDirichletResidueParseval.lean`, blob `152ef7002c566bcca14ec8aac8c027c523693347`, relates unit-residue original causal wave energies to the sum over ALL Dirichlet characters; its proof acceptance remains unverified.
- `GRWTSK/MeasureAndIntegration/GramDiagonalBound.lean`, blob `aca9ab5260453b13a3503f3166aef6f59efcf4ee`, supplies the exact unchanged original μ² diagonal integral and its bound `pickupDiagonal(T)≤2T²`.

Rather than duplicate those modules, this continuation proves the remaining stronger finite arithmetic: the precise positive-index occupancy `ceil(N/q)`, and the q=N signed-zero endpoint that the earlier strict q>N argument did not include.

## 2. Exact sharp fiber bound, with integer zero and equality boundaries

Let q>=1, N∈ℕ and a∈ZMod q. The **original** source fiber is
  S_(q,a,N) = {n in {1,...,N} : (n : ZMod q)=a}.
For N>=1, define
  C_(q,N)=floor((N-1)/q)+1 = ceil(N/q),
and C_(q,0)=0.

The map `n ↦ (n-1)/q` takes S_(q,a,N) into the finite range `0,...,floor((N-1)/q)`. To prove injectivity, suppose m,n are positive original indices in the same ZMod q residue class and have equal shifted quotients.

1. The pinned theorem `ZMod.natCast_eq_natCast_iff'` yields `m%q=n%q`.
2. The pinned `Nat.ModEq.sub` (using `1≤m,n`) transports this congruence to `(m-1)%q=(n-1)%q`.
3. `Nat.mod_add_div` reconstructs each `m-1` and `n-1` from its quotient and remainder. Both are equal, so m=n.
4. The pinned `Finset.card_le_card_of_injOn` yields
   `#S_(q,a,N)≤floor((N-1)/q)+1`.
5. If N=0 the original source fiber is empty. A separate total `sharpResidueCapacity` assigns capacity zero, not one.
6. If q>=N, then `N-1<q` for N>=1, so every fiber has cardinality at most one, including **q=N**.

The new Mathlib-only module `MoebiusResidueFibreSharpArithmetic.lean` authors proof bodies `shifted_remainders_eq`, `residueFibre_shifted_quotient_injective`, `residueFibre_card_le_sharp_quotient`, `residueFibre_card_le_sharpCapacity`, `residueFibre_card_le_one_of_modulus_ge` and `residueFibre_injective_of_modulus_ge`. It uses no RH, analytic source, character, or causal assumptions.

## 3. Sharp complex signed finite arithmetic

The old genuinely finite complex lemma says for a source fiber S and v:S→ℂ,
  |sum_(n in S)v_n|² - sum_(n in S)|v_n|²
    ≤ (#S-1)*sum_(n in S)|v_n|²
when S is nonempty, and more generally whenever `#S≤B+1` the RHS is `B*diagonal`.

The new sharply bounded fiber therefore satisfies, for every q>=1 and N>=0,
  |sum_(n in S_(q,a,N))v_n|² - sum_(n in S_(q,a,N))|v_n|²
    ≤ floor((N-1)/q)*sum_(n in S_(q,a,N))|v_n|².       (A)

For N=0 the fiber is empty and this remains true with zero sides. If q>=N the fiber has at most one index, so the difference is **identically zero**, not merely ≤0.

The new pure finite complex module `MoebiusResidueSharpSignedFibre.lean` contains the candidate proof bodies `residueFibre_signed_square_le_sharp`, `complex_signed_square_zero_of_card_le_one`, and `residueFibre_signed_square_zero_of_modulus_ge`. It does not import physics or any RH/GRH source.

## 4. Transport through the original unit-residue signed mean, with no lost diagonal

Keep the literal original Möbius and birth-gated pickup response from `MertensPrimitive`:
  v_n(u)=μ(n)*pickupResponse(n,u)∈ℂ,
  R_(q,a,T)(u)=sum_(n in S_(q,a,N(T)))v_n(u),
  K_T(m,n)=int_0^T pickupResponse(m,u)*pickupResponse(n,u)du.

The earlier source-exact, but kernel-unverified, Hermitian/Dirichlet character ledger gives for q>0,T>=0:
  meanSignedCross(q,T)
    =sum_(a unit) int_0^T |R_(q,a,T)(u)|²du
      -D_unit(q,T),
  D_unit(q,T)=sum_(n<=N(T),(n,q)=1) μ(n)^2 K_T(n,n).

Apply (A) to the EXACT complex original wave (the norm is taken after the genuine Möbius signed sum). Sum **only unit-residue fibers**, then reindex the corresponding diagonal exactly to `unitDiagonalDensity`. The nonunit source indices stay in the original inventory but are not inserted into the unit diagonal. Integrating this pointwise inequality using the original continuous response and the published exact unit-diagonal integral yields
  sum_(a unit)int_0^T |R_a(u)|²du
    ≤(floor((N(T)-1)/q)+1)*D_unit(q,T).

Subtract the diagonal **before** applying the original `pickupDiagonal≤2T²`:
  -D_unit(q,T) ≤ meanSignedCross(q,T)
      ≤floor((N(T)-1)/q)*D_unit(q,T)
      ≤2floor((N(T)-1)/q)*T².                         (B)

The equality at q>=N(T) follows from more than the upper bound: each unit-residue fiber contains at most one source index, so its complex squared wave is pointwise equal to its exact diagonal; integrate and substitute into the mean identity. Hence
  meanSignedCross(q,T)=0 for ALL positive q>=N(T), T>=0.  (C)
The previous source asserted the zero identity only for strict q>N(T).

The new `MoebiusDirichletMeanSignedSharp.lean` contains actual source-preserving candidate proof bodies for pointwise original signed Cauchy–Schwarz, unit-residue density and integral, two-sided sharp mean, original quadratic payment, and exact q>=N(T) mean zero. No original μ, Dirichlet character, Hermitian conjugation, causal birth gate, diagonal, or angular/gcd cutoff was changed.

## 5. Finite diagnostics actually executed in this continuation

**Exact integer enumeration:** q in {1,2,3,4,5,8,11,13,17,25,31}, N=0..60 plus {72,80,100,120,155,200}, all residue classes: 8,040 finite fibers checked. Zero violations of `card S≤sharpResidueCapacity`; 4,303 fibers attained the new bound. The new bound is strictly sharper than the previous `floor(N/q)+1` in 200 (q,N) combinations, including all positive cases with q|N.

**Original causal Gram vs independently integrated residue squares:** 65-digit mpmath and integer sympy Möbius; the original closed-form birth-integrated Gram and separate integration over log-birth intervals using true source-wave prefixes were compared for
  (q,N)∈{(1,20),(5,25),(5,26),(8,24),(8,25),(12,24),(17,17),(17,34),(31,25)}.
All nine satisfied the sharp upper `meanSignedCross≤floor((N-1)/q)*D_unit`; all nine independent `unit-residue energy-D_unit-meanSignedCross` residuals were below `6×10^{-65}` in absolute value.

Representative data:
| q | N | sharp signed coefficient | mean signed cross | sharp coefficient × D_unit |
|---:|---:|---:|---:|---:|
| 1 | 20 | 19 | -4.496792674393 | 93.44088183134 |
| 5 | 25 | 4 | 1.226291069492 | 23.07179747451 |
| 8 | 24 | 2 | 0.101934836372 | 9.055837498718 |
| 12 | 24 | 1 | -0.129211913142 | 4.034400975464 |
| 17 | 17 | 0 | 0 | 0 |
| 17 | 34 | 1 | 0.040226719444 | 7.547141233104 |
| 31 | 25 | 0 | 0 | 0 |

Numerical diagnostics are finite arithmetic, NOT certified interval enclosures, genuine all-T estimates, Lean compilation or a transitive proof certificate.

## 6. Acceptance boundaries, limitations and next research

The new source files are SOURCE_PROOF_CANDIDATES only. No local lean/lake/elan, authorized Noe managed native runner, or fresh kernel evidence is available in this conversation. The existing canonical Noe proof-automation source was read at Git blob `5292446e4ef1398ba928d8ad339b662415166f19` on `grwtsk/noeaaeue/main`, commit `bcf55a2b88381c5c6d3081e95d7dc66f5d0519b0`; it conveys neither dispatch authority nor theorem acceptance. No native queue/scheduler job was created.

A passive acceptance module lists expected types and `#print axioms`; its presence is NOT a replay receipt. Parser NOT_RUN; expected declaration types NOT_RUN; exact pinned Mathlib/GRWTSK import closure NOT_RUN; independent fresh kernel NOT_RUN; complete transitive axiom/sorry/unsafe audit NOT_RUN. A lexical scan found no new `axiom`, `sorry`, `admit`, or `unsafe` declaration prefixes but is not a semantic audit.

The bound is a mean over ALL Dirichlet characters at each q. Even exact mean=0 at q=N(T) does NOT imply each fixed χ has small signed cross; positive/negative character components may cancel. For fixed q as T grows, the sharp occupancy factor is still exponential. For q>=D_*(T), the existing all-positive-rate family-MEAN source result remains valid; the sharpened coefficient improves arithmetic endpoints but does not create a new fixed-character GRH bound.

Still OPEN: `PrimitiveDirichletFamilyLowGcdEveryRate`, the characterwise signed original low-gcd positive upper; `PrimitiveDirichletCausalToPrefixBridgeTarget`; actual conductor/gamma/pole/Mellin/explicit-formula analytic return; original `PlainLowGcdEveryRateDyadic` and canonical RH. No Dirichlet GRH claim.

Next noncircular research candidates: (i) isolate individual-character absolute/second moments rather than signed means, with honest φ(q) cost; (ii) study primitive-only orthogonality with conductor correction; (iii) obtain genuine fixed-q cancellation from arithmetic, not character averaging alone. None is claimed here.

Source publication is ADDITIVE only on existing math/main, using expected-head non-force ref update. Existing source, root imports, toolchain/Mathlib pins and issue statuses stay unchanged.
