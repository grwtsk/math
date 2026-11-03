# Optimizing source-preserving Möbius decoder errors through the actual positive causal response

Date: 2026-11-02. Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

## Immutable source under study

Source module: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusDecoderPositiveResponse.lean.
Git blob of the new Lean source candidate: 35686a42c743827cad84898acd5e08f9e1fd6c37.

This optimization is based on the existing original source MertensPrimitive.lean (blob 45e06c371d67bcf8c939d20a95fcbc63570546fa), the exact original finite response identity in FiniteResponseSum.lean (blob 15402baec3be3c090a23f9ac1943124e16357dd0), the causal response nonnegativity theorem in MertensSignedPairDescent.lean (blob abde6112700265ec11784292f11a24adcd11d9b6), the original five-moment quadratic source in PickupCellQuadratic.lean (blob e57f87c19acc0adb45f740dfee8b3e06e4d5b57c), and the existing finite-phase decoder work:

- MoebiusFinitePhaseDecoderBudget.lean, blob f9442fbba1b5c617ccaf6234d403d9b4212cf316 (#1598);
- MoebiusWeightedDecoderEnergyTransfer.lean, blob ce1f1396785fe8fb9e045440a4edce25df734326 (#1600);
- Existing RH source and good-scale return, unchanged.

Related: MoebiusSignedWaveYoungTransfer.lean (#1593), pickup endpoint quadrature (#1406), original squarefree dense-gap programme (#1556), gauge/CM residue family (#1599), S4/T3 source-preserving visualization (#1602). These structures do not automatically supply a coefficient decoder, a nonnegative bound on signed pickupCross, or the missing every-positive-rate original arithmetic estimate.

## Optimization 1: pay the actual response lifetime instead of maximum-time mass

The previous source establishes the inverse-square-root coefficient-error mass

M_eta(T) = sum_{n in S_T} eta_n/sqrt(n)

and the genuine error-energy allowance H_error(T) <= 4*T*M_eta(T)^2 for nonnegative T. Each eta_n is an independently certified original-index bound for the signed error e_n = mu(n) - observedCoeff(n), including squareful original zeros and index n=1. These are NOT freely chosen fitted coefficients.

The new source uses the ORIGINAL nonnegative causal response r_n(u) and defines

R_eta(T,u) = sum_{n in S_T} eta_n*r_n(u), with S_T = {1,...,floor(exp(T))}.

For EVERY real u and every accepted source ErrorCertificate:

|errorWave(T,u)| <= R_eta(T,u) <= 2*M_eta(T).

The source-level mathematical improvement is the actual physically integrated radius energy

H_radius(T) = integral_{u=0}^T R_eta(T,u)^2 du,

which satisfies (for T >= 0)

H_error(T) <= H_radius(T) <= 4*T*M_eta(T)^2.

The first comparison does not require a triangle bound over original ordered Gram pairs and is sensitive to the true late-birth response. Both terms are actual source-defined physical-time integrals; neither is the original signed off-diagonal pickupCross.

The preceding full signed waveform energy Young estimates therefore sharpen to

pickupEnergy(T) <= 2*observedEnergy(T) + 2*H_radius(T)
observedEnergy(T) <= 2*pickupEnergy(T) + 2*H_radius(T).

The original two-sided mixed terms stay inside the integrated square before Young is invoked. This is not a proof of a positive signed Möbius kernel.

## Optimization 2: exact positive Gram and two active prefix moments

The new radiusEnergy_eq_fullGram theorem candidate identifies the complete positive-radius integral with

H_radius(T) = sum_{m,n in S_T} eta_m*eta_n*pickupResponseGram(T,m,n).

This is a complete ORDERED sum, INCLUDING its diagonal, not a replacement for pickupCross. The signs of mu(n) remain in the signed observed/error waves, and the error radius is a separate nonnegative certificate.

The existing five-moment arithmetic-cell source suggests a more efficient evaluator. For ANY real coefficient sequence c(n), define the active prefix moments over the original final inventory:

A_c(T,u) = sum_{n in S_T, log(n)<=u} c(n)/sqrt(n)
M_c(T,u) = sum_{n in S_T, log(n)<=u} c(n).

The new exact source identity is

sum_{n in S_T} c(n)*r_n(u) = 2*(A_c(T,u) - exp(-u/2)*M_c(T,u)).

Both the signed decoder-error wave (c=e) and the positive radius wave (c=eta) use the SAME two-moment readout. This permits a source-indexed prefix-sweep evaluator with two running state variables rather than repeatedly scanning all active causal responses at each u. Updating the two moments as original integer births arrive remains a normal finite sum update, not a new arithmetic algorithm for mu(n).

No power of p, squareful mu=0, integer index, clock, winding, or modulus is relabeled by the moment equations. The source must still provide the complete original coefficients or independently certified decoder errors.

## Optimization 3: weaker conditional growth interface, no RH shortcut

The older all-positive-rate result required uniform bounded M_eta(T) on a single fixed region G. The improved source theorem now takes the genuinely weaker mathematical hypothesis

SubexponentialOn( T -> H_radius(eta_T,T), G)

plus genuine ErrorCertificate for ALL original n in S_T at every nonnegative T in G. Under these premises,

SubexponentialOn(observedEnergy,G) iff SubexponentialOn(pickupEnergy,G).

The older UniformWeightedErrorOn condition is proved as a sufficient supplier of the new radius-energy hypothesis. It is not necessary: a late-birth source error may have large maximum-response bound but tiny integrated lifetime. A second new conditional theorem applies the repository's already existing riemannHypothesis_of_energy_good_scales directly to the canonical _root_.RiemannHypothesis, with fixed AffineFrequent G, the actual radius-energy premise and separately supplied all-positive-rate observed-energy budget.

The observed signed arithmetic energy budget is STILL OPEN. The radius-energy estimate is a DECODER error certificate, not an arithmetic cancellation theorem, zero-height certificate, torsion rank bound, or RH proof. A fixed finite phase size, Rank32, M23, Reed-Solomon code, elliptic point count, or representation identity cannot supply the required quantitative premises by itself.

## Finite numerical diagnostic (not a formal proof)

Executed 4,355 checks in an independent transient Python diagnostic (mpmath 40 decimal digits, deterministic original integer trial-division Mobius coefficients, original causal response). Five horizons N=4,7,11,17,24; five deliberately different decoder families per horizon; 34 physical-time samples per case. The diagnostic compared the signed source/decoded/error identities, active two-moment readout for both errors and radii, pointwise dominations, both complete energy transfers, the radius-to-mass allowance, and complete positive-radius response-Gram using an independent closed-form Gram integral versus birth-cell antiderivatives.

Status: 4,355 PASS, NONRIGOROUS NUMERICAL ONLY. Actual source script SHA-256 8caac4832ac971715b26fec30b76a16f61590325b3a7cb19535a9b9430b9b742, JSON result SHA-256 b8b8ec2858f88f0ff03d0823b21bc96fc53eda4f508d2f46656f8c43e4d78273. These temporary files are not committed as research-source process runners or independently trusted verification artifacts.

For N=24 and a single incorrect coefficient at n=24: the old time-mass allowance was approximately 0.5505089717, whereas the positive-radius energy was approximately 0.00002589144488. For a constant-zero decoder, corresponding values were 483.6508114 and 27.11647444. These are bounded checks, not asymptotic bounds or validated interval enclosures.

## Verification, trust and hostile boundaries

SOURCE_PROOF_CANDIDATE. Exact pinned toolchain read from current source: leanprover/lean4:v4.34.1; Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.

NATIVE_COMPILATION_NOT_RUN; EXPECTED_LEAN_TYPES_NOT_RUN; FRESH_KERNEL_NOT_RUN; COMPLETE_TRANSITIVE_AXIOM_AUDIT_NOT_RUN. No Lean/Lake/Elan compiler in the local runtime. The new proof text has no authored sorry, research axiom, or unsafe declaration by lexical scan only; this is not an accepted theorem audit. No remote execution or scheduler authorized or dispatched.

Required acceptance:
- Verify exact source/parent/tree, all three published blob identities, full import closure, warnings-as-errors parsing and elaboration, theorem signatures, fresh kernel and full generated/private/opaque/unsafe/axiom audit.
- Check original closed birth convention and boundary n=1, n=4 mu=0, T=0 and negative-T restrictions on energy inequalities; continuous response and correct finite integration exchange.
- Check positivity of eta_n is a CONSEQUENCE of source-certified coefficient radii, not an unconstrained axiom; if an error record is missing it cannot be treated as original mu=0.
- Check radiusEnergy Gram includes original ordered diagonal and both off-diagonal orders; never identify it with signed pickupCross.
- Check two-moment equality uses the original log(n) birth predicate, weights 1/sqrt(n), exp(-u/2) and exact original time, with no implicit residue-modulus change.
- Check the fixed G and all strictly positive rates in the radius/observed budget; no result follows from finite samples alone.
- Reject import into root GRWTSK.lean or status upgrade until trusted replay and actual theorem dependency audit.

The repository is a pure mathematical source. Execution managers, verifier receipts, caches and scheduling belong to grwtsk/noeaaeue. Nothing in this source review authorizes them.
