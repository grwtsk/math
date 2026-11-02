# Exact original-source high-smooth/rough carrier collapse

Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Research date: 2026-11-01. This is an ordinary mathematical proof plus a Lean SOURCE_PROOF_CANDIDATE. Compilation, expected-type checking, independent fresh kernel replay and transitive axiom audit remain NOT_RUN. No new research axiom, sorry or RH proof is asserted.

## 1. Pinned source and the actual observable

The original sources are:

- `MoebiusBalancedTwoSidedPNTDense.lean`: the actual original signed `taggedMoebius P rough n`, the original endpoint-clipped `balancedBlock X T`, and the signed `taggedDenseRectangle P a b A X X T` with the literal off-diagonal condition `m != n`, actual `Nat.dist`, arbitrary excluded gap mask `A`, complete two orientations and `pickupResponseGram T m n`.
- `MoebiusPrimeSmoothFiniteConvolution.lean`: `bankSmooth P d` means every prime factor of the **positive integer d** belongs to P. The unit 1 is P-smooth for every P, including an empty bank.
- `MoebiusNearSquareRootEulerPrefix.lean`: the original real cutoff `nearSquareRootCut (2*X) = (2X) exp(-2 sqrt(log(2X)))`, with **no integer rounding** of the divisor threshold.
- `MoebiusHighSmoothDensePairs.lean`: `hasNearMaximalSmoothDivisor B X n`, the high/low filters of the ORIGINAL `balancedBlock`, the exact four-strata identity `taggedDenseRectangle_eq_four_smooth_strata`, and the separately OPEN quantitative `HighSmoothCountFormalizationTarget`/`HighSmoothDenseFormalizationTarget`.
- `MoebiusEndpointLeastPrimeTypeII.lean` and `LiouvilleSignedBuchstabTypeII.lean`: the original `firstSelectedDivisor`, which equals 0 precisely when no selected prime divides the integer source index. No alternate least-prime or surrogate coefficient is introduced.

## 2. The exact cutoff phase distinction

Fix an ORIGINAL shell X and observation horizon T, a finite genuine-prime bank B with P=B.primes, and

  Q_X = (2X)*exp(-2*sqrt(log(2X))).

The selected high set H consists of the original source indices n in S=balancedBlock X T for which there exists a **positive divisor** d|n that is P-smooth and d>Q_X. The low set L=S\H.

**Case I: Q_X<1.** Since d=1 divides every n and has no prime factors, d=1 is P-smooth even for an empty bank. Therefore the strict d>Q_X condition holds on EVERY original source index:

  H=S,  L=empty.

This is a logically important boundary: it would be WRONG to infer a rough-tag vanishing theorem on these early shells. In particular, with an empty prime bank, the high set is the entire source shell whenever Q_X<1, not an empty support.

**Case II: Q_X>=1.** Every witness satisfies d>Q_X>=1, hence d>1. Every natural d>1 has a genuine prime divisor p. By bankSmooth, p∈P; since p|d and d|n, p|n. The actual original `firstSelectedDivisor P n` therefore exists and is nonzero (the witness produced by `Nat.find` is a prime, hence cannot equal 0). Consequently,

  taggedMoebius P true n = 0,
  taggedMoebius P false n = moebiusReal n,      for all n∈H.

This is a **pointwise identity at each original index**, including squareful zero coefficients. It uses no Mertens estimate, Euler moment, sign averaging or pair energy hypothesis.

For physical terminal time T=log(2X), numerical values place the first shell with Q_X>=1 at X=28. The main Lean theorems deliberately use the precise hypothesis Q_X>=1, not an unverified uniform numerical threshold or a hidden eventuality statement. A separately proved elementary global cutoff threshold may later discharge Q_X>=1 for all sufficiently large X.

## 3. All four signed original dense tag orientations

Let D_{ab}(A;X,T) be the existing `taggedDenseRectangle P a b A X X T`, and D_{ab}(U,V) be the actual `maskedTaggedBlock P a b A U V T`. Every term keeps the same original m,n, pickupResponseGram, signed Möbius tag, diagonal exclusion and gap mask.

The existing exact high/low four-strata identity states

  D_{ab}(S,S) = D_{ab}(H,H)+D_{ab}(H,L)
                +D_{ab}(L,H)+D_{ab}(L,L).

Under Q_X>=1, the newly proved **source-level zero identities** are

  D_{true,b}(H,J)=0     for EVERY b and every finite J,
  D_{a,true}(I,H)=0     for EVERY a and every finite I.

There is no assumption that the signed matrix is positive semidefinite or that a masked Gram satisfies Cauchy-Schwarz. These zeros are instead literal index-by-index coefficient zeros.

The three exact consequences are:

  D_{true,true}(S,S)  = D_{true,true}(L,L).
  D_{true,false}(S,S) = D_{true,false}(L,H)+D_{true,false}(L,L).
  D_{false,true}(S,S) = D_{false,true}(H,L)+D_{false,true}(L,L).

The matched/matched `false,false` sector continues to have its complete four original strata. In particular, the high/high sector is **entirely matched/matched**, but no cancellation estimate or missing mixed term is inferred from these identities. Both mixed **ordered** orientations are retained in the two displayed equations. This removes high rough carriers, not the genuine high/low matched correlations.

This is a source-exact algebraic reduction of the quantitative dense target. The remaining hard signed original long-gap contribution remains OPEN, especially the low/low and both matched-bearing high/low terms. The existing conditional high/high upper bound `8*T*exp(2*sqrt T)*V_P^2` still requires its separate source-checked high-count and finite Euler-moment proofs. Neither the previous logarithmic Mertens input nor this carrier identity provides the missing all-positive-rate dense estimate needed for canonical RH.

## 4. New Lean source and precise proof layer

The new file `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusHighSmoothRoughCollapse.lean` proves SOURCE CANDIDATES for 13 statements:

`one_bankSmooth`;
`highSmoothBlock_eq_balanced_of_cut_lt_one`;
`lowSmoothBlock_eq_empty_of_cut_lt_one`;
`firstSelectedDivisor_ne_zero_of_bank_prime_dvd`;
`highSmooth_has_selected_prime`;
`highSmooth_rough_coefficient_zero`;
`highSmooth_matched_eq_original`;
`rough_zero_of_mem_highSmoothBlock`;
`masked_high_rough_row_zero`;
`masked_high_rough_column_zero`;
`rough_rough_dense_eq_low_low`;
`rough_matched_dense_eq_low_row`;
`matched_rough_dense_eq_low_column`.

The source imports only the established `MoebiusHighSmoothDensePairs.lean` and pinned Mathlib. All new theorems take exact source definitions, visible cutoff hypotheses and original signed coefficients. No root import, toolchain, Mathlib revision, source definition or existing research theorem is edited.

## 5. Independent finite adversarial preflight

A separate local exact-integer/floating diagnostic ran seven finite prime banks (including empty), all shells X=1..90, T=log(2X), and original positive indices in (X,2X]. Sieve and bank-smooth divisibility tests used exact integers, including the squareful μ=0 values. For X<=17 it also formed signed original source masked rectangles with the true analytic causal response product, integrated using midpoint quadrature, and three masks: empty, {1}, {1,2,3}.

Result: PASS, no observed violations.

- Q<1 high=whole and low=empty: 2,646 checks of each property.
- Q>=1 actual prime factor, original rough coefficient zero, matched=actual μ: 12,535 checks for each statement.
- Ordered coefficient-level HH identities for all four true/false tag orientations: 1,947,980 checks.
- Complete signed masked four-strata and restricted-orientation finite comparisons: 1,428 checks; maximum reported residual 0 in the tested fixtures.
- The measured first integer X with Q_X>=1 was X=28.

Diagnostic script `/mnt/data/moebius_high_smooth_rough_collapse_preflight.py` has SHA-256 `550409c370729c835b650afeac36c1114c56b5236892e05c2f8ba2bd42baae76` in the working container of this research turn. It is **not** imported as a mathematical source or committed to the main repository. The floating quadrature is not an interval proof or a native Lean check. Do not extrapolate finite checks to all shells or banks; the mathematical proof above is independent of this diagnostic.

## 6. Remaining proof and acceptance obligations

1. Pinned-source Lean elaboration of all 13 declarations and full import closure; check equality orientation, `Nat.find` dependent-if rewriting and exact `Finset.sum` split.
2. Independent fresh Lean kernel replay and transitive axiom/unsafe/generated-dependency audit. Source scanning for `sorry` and `axiom` is insufficient.
3. A genuinely checked proof of the original high-smooth **cardinality** estimate from finite smooth Euler moments, and of the high/high **analytic Gram** estimate, if this route is used quantitatively.
4. Uniform growth control of the explicit bank-dependent weight `bankSquareRootWeight B.primes` when B grows with X.
5. A genuine all-positive-rate upper estimate on the remaining COMPLETE original signed long-gap source, including low/low and surviving high/low matched orientations on one adequate covering family. No such estimate or canonical RH is established here.

**Classification:** SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN / CUT_SUPPORT_DICHOTOMY_ORDINARY_PROOF / SOURCE_ZERO_REDUCTION_SCRIPTED / HIGH_COUNT_OPEN / HIGH_HIGH_BOUND_OPEN_IN_LEAN / DENSE_LONG_GAP_ALL_RATE_OPEN / RH_OPEN.
