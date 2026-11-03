# Original causal Möbius response: finite Abel and unconditional PNT log-power rate-one

Local attribution: grwtsk contributors. Research date: 2026-11-01.
Mathematical role: a complete ordinary mathematical argument plus source proof candidates, NOT kernel-accepted RH.

## Actual GRWTSK arithmetic source and comparisons

- GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean, Git blob 45e06c371d67bcf8c939d20a95fcbc63570546fa. Original moebiusReal, mertensPrefix, pickupVelocity, wholePickup, pickupResponse, pickupResponseGram, pickupEnergy, pickupCross.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleDoubleAbelAnalyticGates.lean, Git blob b4bd9a83c83603faa5eff5326d9a99ec35dae2d4. Original positive-index response nonnegativity, antitonicity and exact source mixed-difference positivity.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/LogarithmicPickupSampling.lean, Git blob 074c22f028467b2205d79dd312625fc23b053373; LogarithmicPickupSeries.lean, Git blob 5506b20363b885d49107bc13f36c871cf92e853b. Existing wholePickup finite-source identification and exact Mertens prefix increment.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PickupMertensAbel.lean, Git blob 279a189f0665afc480397eeeb3de3b6c1bba9355. Earlier exact Mertens-Abel result at DISCRETE logarithmic samples, not the new full causal response at every real time.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusBalancedTwoSidedPNTDense.lean, Git blob 8abba800d86af6cee6065b11dfff52713ae85785. Concurrent original arithmetic source for both-signed-tag balanced DYADIC rectangles and finite/polylog growing prime banks, with its own source proof candidates and unformalized PNT-to-Abel analytic estimate. The new result is the GLOBAL physical causal amplitude and its unconditional rate-one energy saving, not a duplicate dyadic block.
- Pinned Mathlib: Finset sum_range_succ; Finset.sum_sq_le_sum_mul_sum_of_sq_le_mul (Mathlib/Algebra/Order/BigOperators/Ring/Finset.lean Git blob c81e3ba895b5566a2fa0790da9b5d8a1ad1f58c7), both at Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

## Classical primary and contemporary arithmetic references

- Ivan Matveevich Vinogradov and Nikolai Mikhailovich Korobov: unconditional zero-free region yielding quantitative Mertens bounds |M(x)| <= C_A x/(1+log x)^A for each fixed A>=1. Standard printed reference: Arnold Walfisz, Weylsche Exponentialsummen in der neueren Zahlentheorie (1963), Section V.5 Satz 3. This is standard known number theory, not grwtsk novelty.
- Ethan Simpson Lee and Nicol Leong, New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function, arXiv:2208.06141, https://arxiv.org/abs/2208.06141. The exact quantitative constants and the source's use of the classical bound are independent of the canonical RH statement; the external paper was not imported into Lean.
- Jacques Hadamard and Charles-Jean de la Vallée Poussin (1896), Prime Number Theorem, classical context only; the present rate-one result uses a quantitative Mertens form rather than assuming a power saving or RH.

## New exact declarations and missing source proofs

The source candidate GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalMertensSquareBridge.lean (Git blob be156509d9679a22b52b32d087f87d8449a047ef) contains:
finiteMertensPrefix_eq_source; finiteAbel; finitePickup_eq_MertensAbel; responseDrop_nonneg; responseDrop_sum; finitePickup_eq_MertensDrops; finitePickup_abs_le_MertensDropBudget; finitePickup_abs_le_of_prefix_envelope; finitePickup_square_le_MertensSquareDropBudget; original_terminal_response_zero; terminalPickup_abs_le_MertensDrops. All are SOURCE_PROOF_CANDIDATES, compilation/expected types/fresh kernel/axiom audit NOT_RUN.

The new source defines two PROPOSITIONS, without proving or postulating them: OriginalCausalMertensSquareEnergyTarget for the full original pickupEnergy upper bound by the source kernel difference sum with exact Mertens prefix squared, and OriginalBalancedPNTLogPowerTarget for the unconditional EXPONENTIAL RATE ONE, arbitrary logarithmic-power upper envelope for pickupCross. A written complete ordinary proof of both is in the companion review; the Lean bridges still missing are the original wholePickup finite horizon, finite integral interchange, and quantitative classical Mertens bound. No source claims an all-positive-rate RH estimate.

## Diagnostics and assurance

- /mnt/data/mobius_causal_abel_exact_preflight.py SHA256 46b83474d01297b2a5960eb4756185a6981e2b242137344b4a0a81fe5d040c26: 14,140 exact rational Abel/L1/Cauchy checks PASS, NOT Lean.
- /mnt/data/mobius_causal_mertens_square_preflight.py SHA256 cbc72572deea7e7e013f3816f1d08f210d12e2c498ee8aa0de40db7e297732f3: 1,266 source Möbius/causal-gram numerical checks PASS, NOT certified intervals.
- Mathematical source identities WRITTEN; global PNT rate-one log power ordinary mathematical proof WRITTEN, external classical input NOT LEAN CHECKED; compiler NOT_RUN, exact types NOT_RUN, fresh kernel NOT_RUN, transitive axiom audit NOT_RUN; balanced all-rate RH arithmetic supplier OPEN; cofinal complete zeta zero certificate OPEN; RH OPEN.

No new analytical exponent below one, no RH or BSD proof, and no historical theorem verification promotion is asserted.