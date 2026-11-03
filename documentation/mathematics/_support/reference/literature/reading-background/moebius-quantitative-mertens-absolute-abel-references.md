# Quantitative Mertens → sharp original causal Abel envelope

Local mathematical attribution: grwtsk contributors.
Research date: 2026-11-01. This is a source-specific bridge to established unconditional arithmetic, NOT a new proof of the classical Mertens estimate or RH.

## Primary classical theorem and version

- Ethan Simpson Lee and Nicol Leong, "New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function", arXiv:2208.06141v5, revised 2026-09-09, https://arxiv.org/abs/2208.06141v5 ; https://doi.org/10.48550/arXiv.2208.06141 . Current v5 abstract (NOT the older 2022 or 2024 abstract) gives unconditional explicit estimates of orders x(log x)exp(-η sqrt(log x)), x(log x)exp(-η sqrt(log x loglog x)), and x(log x)exp(-η (log x)^(3/5)(loglog x)^(-1/5)). The constants and validity ranges are source-specific. For every fixed integer A>=1, enlarging a positive constant over the finite initial range gives the simpler classical consequence |M(n)|<=C_A n/(1+log n)^A for all integers n>=1.
- A. Walfisz, Weylsche Exponentialsummen in der neueren Zahlentheorie (1963), §V.5 Satz 3, historical classical Vinogradov–Korobov zero-free-region and summatory Möbius context.
- The classical Prime Number Theorem alone only gives M(x)=o(x); it does not by itself prove an arbitrary fixed logarithmic-power rate. No analytic zero-free-region proof or external quantitative result is newly kernel-checked in this commit.

## Exact maintained source

- grwtsk/math, Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612, existing main root unchanged.
- GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean, blob 45e06c371d67bcf8c939d20a95fcbc63570546fa — original real Möbius coefficient, original Mertens prefix, pickupResponse, pickupEnergy, pickupCross, full Gram and diagonal.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalMertensSquareBridge.lean, blob be156509d9679a22b52b32d087f87d8449a047ef — defines ClassicalMertensLogPowerInput as an UNPROVED proposition with exact quantifiers (for each integer A>=1, exists C_A, for every n>=1). Exact finite signed Abel response, positive causal drops, original birth and true prefix identity.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusCausalMertensSquareEnergyIntegration.lean, blob c01a1e892c14343aee002554172373e9190f6611 — full signed original energy comparison against the SHARPER integral of squared absolute-prefix Abel envelope, not only the coarser Mertens-square Cauchy budget.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleDoubleAbelAnalyticGates.lean, blob b4bd9a83c83603faa5eff5326d9a99ec35dae2d4 — true nonnegative antitone physical causal response.
- GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleCausalPhysicalGramIntegrability.lean, blob e23f62fc60ce5867e4c183117162c59ff4989b6f — birth continuity, integrability and future birth vanishing.
- Concurrent alternative consumers on exact current main: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusQuantitativeMertensEulerPrefix.lean (blob a3b95518661d541c9a13766466ba582109140fd1), which defines the CLASSICAL `QuotientMertensLogPower` for true quotient cutoffs as an explicit premise, and MoebiusTwoCoordinateCausalAbel.lean (blob 03b2e02abcae65e9b07428d3ad2c81e65b2f5cbc), which carries original signed rough/matched finite rectangles and finite Euler costs. Those do not supply a checked proof of the classical arithmetic or this untagged complete physical-energy sharp envelope.
- Mathlib/Analysis/SpecialFunctions/Exp.lean, pinned Git blob 97aa22cce9a0173e19aa13b00bb213f5a48ebef8 — Real.exp_half. Mathlib/Algebra/Order/BigOperators/Ring/Finset.lean, pinned blob c81e3ba895b5566a2fa0790da9b5d8a1ad1f58c7 — exact finite Cauchy (not used in the SHARPER arithmetic envelope).
  
## New declarations, exact theorem interfaces and status

The new maintained source GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusQuantitativeMertensAbsoluteAbel.lean, namespace GRWTSK.NumberTheory.Moebius.QuantitativeMertensAbsoluteAbel, contains:
- originalPrefix_logPower_of_classical, with the existing ClassicalMertensLogPowerInput as its only new theorem parameter;
- absMertensDropWave_le_logarithmicDropBudget, exact original finite sum transfer;
- pickupResponse_le_two_inv_sqrt, invsqrt_range_sum_le_two_sqrt, weightedDropMoment_eq_response_sum_sub_terminal, weightedDropMoment_le_four_sqrt, responseDrop_sum_le_two, all arithmetic-independent original causal estimates;
- original_prefix_early_late_logBound and absMertensDropWave_le_logPower_split, with the explicit valid real split H=exp(u/4);
- responseDrop_zero_of_future and absMertensDropWave_horizon_eq_dynamic, with literal original Nat.floor(exp T) inventory;
- logPowerTimeProfile and its continuous/nonnegative lemmas;
- classicalMertens_to_original_sharp_pointwise and classicalMertens_to_sharp_original_energy_envelope: a SINGLE C_A independent of all integer labels, observation times and terminal horizons;
- the UNPROVED scalar calculus PROP TimeProfileRateOneIntegralTarget, deliberately separated from the classical arithmetic PROP;
- originalRateOneLogPower_of_classical_and_integral, conditional on BOTH explicit source propositions and returning the preexisting OriginalBalancedPNTLogPowerTarget.

Mathematical primary derivation: documentation/mathematics/_support/reviews/moebius-quantitative-mertens-absolute-abel-2026-11-01.md. Its finite first-moment inequality is sum_(k<=N)k*d_k(u)<=4 sqrt N. The sharp actual envelope satisfies, assuming |M(n)|<=C_A n/(1+log n)^A,

  absMertensDropWave(floor exp u,u)
     <=2 exp(u/4)+4^(A+1)C_A exp(u/2)/(1+u)^A

for u>=0. The old full energy is <= integral_0^T of this square, and a separate elementary analytic proof bounds that integral by K_(A,C_A) exp T/(1+T)^(2A). This is EXPONENTIAL RATE ONE, not exp(εT) for all ε>0; no canonical RH implication is asserted.

## Evidence and unresolved acceptance

Independent original-index finite test /mnt/data/mobius_quantitative_mertens_absolute_abel_preflight.py, SHA256 a70574c889fe1cbdc3892bb2486443d08485146aa0196e834916d0a457b04ebf, 16,129 high-precision comparisons PASS. Its C_A was calibrated on FINITELY many tested labels only and does not prove the universal classical input or provide rigorous interval enclosures.

Status: MATHEMATICAL_FINITE_ARGUMENT_WRITTEN; MATHEMATICAL_SCALAR_INTEGRATION_ARGUMENT_WRITTEN; LEAN_SOURCE_PROOF_CANDIDATE; COMPILATION_NOT_RUN; EXPECTED_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN. Unproved/undelivered in pinned Lean: ClassicalMertensLogPowerInput from a fully imported external zero-free-region argument; TimeProfileRateOneIntegralTarget as a checked source theorem; all-positive-rate signed RH arithmetic; effective complete cofinal zeta-zero counts; canonical RiemannHypothesis. No new axioms, sorry, native runner, remote CI or scheduler.
