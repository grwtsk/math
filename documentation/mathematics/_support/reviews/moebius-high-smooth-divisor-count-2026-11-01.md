# Original high-smooth cardinality from finite positive multiples

Research date 2026-11-01. Local mathematical attribution: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. Classification: mathematical proof and Lean SOURCE_PROOF_CANDIDATE. Compilation, expected-type checks, fresh kernel replay and transitive axiom audit NOT_RUN.

## Exact source and theorem

The target is GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs.HighSmoothCountFormalizationTarget, where the high carrier is the original source-filtered balancedBlock X T and n is retained if some POSITIVE integer divisor d|n is bankSmooth B.primes d and satisfies the strict REAL threshold

  Q_X = (2X) exp(-2 sqrt(log(2X))) < d.

The source keeps the original n, original cutoff, entire prime powers of the finite true-prime bank, and the original time horizon. There is no substitute coefficient, missing squareful zero or new Gram. It actually proves a stronger all-horizon count candidate conditional on FiniteSmoothEulerMoments B.

## Independent finite arithmetic count

Set N=2X>=2 and s=sqrt(log N). Define the genuine divisor inventory

  D = {d: 1<=d<=N, bankSmooth B.primes d, Q_X<d},

and for d in D let U_d = {n: 1<=n<=N, d|n}. Every original n in highSmoothBlock B X T belongs to at least one U_d. This is an inclusion, not a fictitious equality: from d|n and n in the source-clipped shell, 1<=d<=n<=N.

At pinned Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, Nat.Ioc_filter_dvd_card_eq_div is in Mathlib/Data/Nat/Factorization/Basic.lean (blob 33ebfe9b25f9b23edaea0893f627d77efb54f86a). It proves exactly #U_d=floor(N/d). Together with Finset.card_biUnion_le, this yields, without arithmetic cancellation,

  #highSmoothBlock <= sum_(d in D) floor(N/d)
                   <= N * sum_(d in D) (1/d).

This finite upper bound is unconditional; every potential overlap in smooth-divisor fibers is paid in the correct direction.

## Scalar cutoff gain and Euler moment

For d in D, d>Q_X=N exp(-2s), so

  sqrt(d) > sqrt(N) exp(-s),
  N/d <= sqrt(N) exp(s) / sqrt(d).

The Lean source provides a separate elementary real proof of this exact inequality using exp(-2s)=(exp s)^(-2), real square roots and nonnegative cross multiplication. It does not require Q>=1; the unit divisor d=1 is included whenever Q<1.

Thus

  #highSmoothBlock B X T
    <= sqrt(N) exp(s) * sum_(d in D) 1/sqrt(d)
    <= sqrt(N) exp(s) * sum_(1<=d<=N, bankSmooth) 1/sqrt(d)
    <= sqrt(N) exp(s) * bankSquareRootWeight B.primes.

The LAST inequality consumes the existing separately defined proposition FiniteSmoothEulerMoments B, which has NOT been supplied as a proved Lean theorem. This produces the exact desired bound

  #highSmoothBlock B X T
    <= sqrt(2X) exp(sqrt(log(2X))) bankSquareRootWeight B.primes.

The new theorem highSmooth_card_le_of_finiteMoments B X T hX hMoments establishes this as a Lean SOURCE CANDIDATE for every real T (not just T=log(2X)). A second theorem highSmoothCountTarget_of_finiteMoments proves the existing universal HighSmoothCountFormalizationTarget from the explicit argument (forall B, FiniteSmoothEulerMoments B). No axioms, sorry, premise-free Euler claim or RH conclusion are added.

## Published source candidates

New source: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusHighSmoothDivisorCount.lean. It contains the original positive-divisor inventory, positiveMultiple fibers, and seven candidate theorems:

- positiveMultiples_card: exact pinned Mathlib positive multiple cardinality.
- highSmooth_subset_divisor_union: source-exact original high carrier inclusion.
- highSmooth_card_le_sum_quotients: fully finite integer source upper.
- real_quotient_le_sqrt_exp_halfweight: scalar cutoff inequality.
- largeSmooth_halfMoment_le: conditional original positive smooth half-moment.
- highSmooth_card_le_of_finiteMoments: original source count with explicit per-bank moment.
- highSmoothCountTarget_of_finiteMoments: conditional consumer at EXACT earlier target type.

The source imports existing MoebiusHighSmoothRoughCollapse and Mathlib, with no modification of original source definitions, root imports, pinned Lean v4.34.1/Mathlib revision, native runners or CI.

## Independent finite adversarial preflight

New local Python/mpmath reference: /mnt/data/moebius_high_smooth_divisor_count_preflight.py, SHA256 5211a0911b1ed7709ef72835911608558cee66b216419dec9c40218e6f165517. JSON result: /mnt/data/moebius_high_smooth_divisor_count_preflight_result.json, SHA256 80b9ad70ec107464946f4b48cb2bf3c3fd8e89def69f0f7397b265250e5e356e.

Executed X=1..150 across seven genuine prime banks including empty, using original positive smooth divisors, exact integer divisibility and 75-digit mpmath for real/log/sqrt comparisons. PASS: 39,822 cover checks, 1,050 integer cardinality checks, 24,663 quotient checks, 24,663 cutoff halfweight checks, 1,050 finite half-Euler checks, 1,050 final cardinality checks, 189 early all-high fixtures, 37,176 late prime-factor witnesses. The first observed integer X with Q>=1 was 28. The largest observed #high/final RHS was approximately 0.498626, empty bank at X=27. The floating checks are NOT interval certified, do not prove the theorem and do not certify a global Mertens constant.

## Exact acceptance and research frontier

Pinned Mathlib EulerProduct.summable_and_hasSum_factoredNumbers_prod_filter_prime_geometric in Mathlib/NumberTheory/EulerProduct/Basic.lean is an appropriate supplier for the still-open finite Euler moment. Its proof requires the original bankSmooth-to-Nat.factoredNumbers carrier equivalence, completely multiplicative reciprocal/sqrt weights, and nonnegative finite-sum comparison. The present count proof does NOT assert these auxiliary Lean lemmas.

The next high/high analytical target uses the actual source coefficient bound, source physical Gram 0<=pickupResponseGram T m n<=4T/X, and the count to derive the original complete masked signed estimate

  |HH| <= 8 T exp(2 sqrt T) bankSquareRootWeight(B.primes)^2

at T=log(2X). This still requires its own Lean source proof and does not imply control over the low/low and both surviving matched high/low ordered long-gap packets. No positivity of an arbitrary masked signed Gram is assumed.

Growing-bank square-root Euler weights, independent classical quantitative Mertens import, full signed all-positive-rate arithmetic, and canonical RH are open. Verification requirements: exact-source pinned compilation, expected types, fresh kernel replay and transitive axiom/private/unsafe audit. A source-level no-sorry scan and finite diagnostics do not discharge them.

Classification: SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN / FINITE_EULER_MOMENTS_OPEN_IN_LEAN / HIGH_HIGH_SIGNED_GRAM_OPEN_IN_LEAN / DENSE_ALL_POSITIVE_RATE_OPEN / RH_OPEN.
