# Original single-birth complex integral: full mathematical proof and Lean source candidate

Research date: 2026-11-02 (America/Los_Angeles).
Research source snapshot: `grwtsk/math/main` at `ecf392a3cb06d249cea496296e2d5802e60cf555`.
Attribution: grwtsk contributors.
Formal status: mathematical derivation and explicit Lean SOURCE_PROOF_CANDIDATE, NOT Lean acceptance. Parsing, elaboration/expected types, full pinned imports, fresh kernel replay and transitive axioms NOT_RUN. RH and Dirichlet GRH OPEN.

## 1. The exact preceding source obligation

The original physical response is from `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/MertensPrimitive.lean`, blob `45e06c371d67bcf8c939d20a95fcbc63570546fa`:

  pickupResponse n u =
    if Real.log (n:Real)<=u then
      2*((Real.sqrt n)^(-1) - Real.exp(-u/2))
    else 0.

The PREEXISTING named unresolved proposition is defined in `MoebiusLFunctionComplexPrefixTransfer.lean`, blob `c6627c1e310465627cd98bb13e65d3a143f582e6`:

  OriginalSingleBirthComplexIntegralTarget :=
    for every n>=1, u>=0,
    IntervalIntegrable (fun v => (originalBirthStep n v:Complex)) volume 0 u
    AND
    integral_0^u (originalBirthStep n v:Complex)
       = (pickupResponse n u:Complex),

with `originalBirthStep n v := if log n<=v then exp(-v/2) else 0`.

The preceding conditional candidate `familyPrefixResponseReconstruction_of_singleBirth` consumes precisely this proposition and proves `FamilyPrefixResponseReconstructionTarget`. No alternative waveform, step function, cutoff convention or endpoint change is introduced here.

## 2. Elementary source-specific proof, including the birth endpoint

Fix n>=1 and set a=log n>=0. For every real v:
- if v<a, the original step is exactly zero;
- if v>=a, the step is exp(-v/2), and since v>=a>=0 its norm is <=1.

Hence the complex-cast original step is Borel measurable and has globally bounded norm <=1. Every finite interval has finite Lebesgue measure; pinned Mathlib `Measure.integrableOn_of_bounded` and `intervalIntegrable_iff_integrableOn_Ioc_of_le` yield complex `IntervalIntegrable` on [0,u] and on the subintervals [0,a], [a,u].

If u<a, the step vanishes everywhere on [0,u], so its oriented interval integral is zero. The original `pickupResponse` is also exactly zero. This includes u=0 for n>1.

If a<=u, use `intervalIntegral.integral_add_adjacent_intervals` on 0,a,u. On the open interval (0,a), the step is zero; it can be nonzero at the single birth endpoint v=a, but `intervalIntegral.integral_congr_Ioo_of_le` correctly removes that measure-zero difference. On the closed [a,u], the step equals exp(-v/2), including v=a.

The scalar exponential integral is
  integral_a^u exp(-v/2) dv
    = 2*(exp(-a/2)-exp(-u/2)),
obtained from the pinned `intervalIntegral.integral_comp_mul_right` at c=-1/2 and `intervalIntegral.integral_exp`.

Finally
  exp(-a/2)=exp(-log n/2)
            =(exp(log n/2))^(-1)
            =(sqrt(exp(log n)))^(-1)
            =(sqrt n)^(-1),
using pinned `Real.exp_neg`, `Real.exp_half`, and `Real.exp_log` with n>0. Casting the real integral to complex uses pinned `intervalIntegral.integral_ofReal`. The result is EXACTLY the prior `pickupResponse` formula, including n=1 and u=a.

No Möbius cancellations, Dirichlet L functional equations or GRH assumptions are present in this elementary one-dimensional proof.

## 3. Authored Lean candidate and transitive consumers

New additive module `MoebiusLFunctionSingleBirthIntegralClosure.lean` supplies the explicit proof bodies:

- `birthStep_measurable` (private): exact original step and Borel measurability.
- `birthStep_norm_le_one` (private): global norm bound for n>=1.
- `birthStep_intervalIntegrable` (private): complex interval integrability from finite-measure boundedness.
- `integral_exp_neg_half` (private): scalar exponential primitive through the pinned interval change-of-variable theorem.
- `exp_neg_log_half_eq_inv_sqrt` (private): correct physical sqrt normalization.
- `originalSingleBirthComplexIntegral_proof : OriginalSingleBirthComplexIntegralTarget`: explicit both-birth-case candidate, no assumptions.
- `familyPrefixResponseReconstruction_proof : FamilyPrefixResponseReconstructionTarget`: immediate instantiation of previously authored finite Fubini/causal prefix consumer.
- `familyCumulativeEnergy_eq_fullGram_proof`: original complete family Mertens-prefix norm-square energy equals its ORIGINAL full ordered Hermitian causal Gram for T>=0.

All the transitive consumers are source proof candidates; the Lean elaborator, expected declaration types, native replay and axiom audit have NOT been executed. This matters because earlier imported proof candidates may still contain elaboration/API problems. No kernel acceptance of either new or old declarations is asserted.

## 4. Additional finite diagnostics actually executed

Using 60-digit mpmath arithmetic, 30 separate cases were evaluated with n=1,2,3,5,11,37 and horizons u=0, (log n)/2, log n, log n+0.1 and log n+2 (with duplicates for n=1). The direct piecewise integral and original sqrt-normalized `pickupResponse` agreed to maximum absolute residual about 1.56e-61. The exact birth boundary u=log n was included. These numerical checks test the paper formula and factors but are neither interval-certified nor Lean proofs.

## 5. What remains open

The original scalar calculus proposition is now addressed by an explicit Lean proof body; acceptance still requires actual pinned compilation of this exact module and all its imports, fresh independent kernel replay, expected-types inspection and full transitive axiom audit. A passive acceptance module records the check/axiom commands but does not run them.

The missing substantive mathematical statements are unchanged:
  `PrimitiveDirichletFamilyLowGcdEveryRate` (characterwise one-sided signed every-positive-rate low-gcd source);
  `PrimitiveDirichletCausalToPrefixBridgeTarget` (causal energy estimate to actual generalized Möbius prefix bounds);
  the primitive-character Mellin/explicit formula, conductor/gamma, principal pole and zero-set Dirichlet GRH return;
  `PlainLowGcdEveryRateDyadic` in the original real zeta channel;
  coefficient-dependent higher-degree absolute tails and authentic Artin/elliptic/Hecke local-to-global analytic identifications.

The first is RH/GRH-strength and unproved. The present elementary integral identity is NOT a proof of RH or of any family GRH.
