# Weighted finite-phase decoder waveform energy transfer

Date: 2026-11-02. grwtsk/math. Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.

## Original source and actual new mathematical estimate

New Lean proof candidate: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/MoebiusWeightedDecoderEnergyTransfer.lean
Exact authored Git blob: ce1f1396785fe8fb9e045440a4edce25df734326.
Imports the unchanged previous decoder envelope source MoebiusFinitePhaseDecoderBudget.lean (blob f9442fbba1b5c617ccaf6234d403d9b4212cf316), original signed-pair response source MertensSignedPairDescent.lean (blob abde6112700265ec11784292f11a24adcd11d9b6), and pinned Mathlib.

The exact original source is wholePickup(u), its physical-response scalar pickupResponse(n,u), the original closed endpointIndex(T), actual original Möbius coefficient mu(n), pickupEnergy(T), and the unchanged canonical RH target. The earlier source identity wholePickup_fixed_inventory states for 0<=u<=T:

  wholePickup(u) = sum_(1<=n<=floor(exp T)) mu(n) * pickupResponse(n,u).

For every original integer n>=1 and every real u, the SOURCE-defined response is nonnegative and at most 2/sqrt(n). The new module proves an independent uniform response bound using the literal response and the existing nonnegativity theorem; it neither changes the response nor assumes a spectral positivity statement.

For arbitrary finite-phase assignments and phase-only real decoders, put a_n=observedCoeff(n), e_n=mu(n)-a_n, and keep EVERY original integer even when mu(n)=0. The actual decoded and error waveforms are finite sums of a_n*r_n(u) and e_n*r_n(u), with the SAME original cutoff and response. No mass or source index is reinterpreted as a different prime/residue modulus. Their exact sum is wholePickup(u) throughout the real interval [0,T].

Given independently source-index-certified |e_n|<=eta_n for every original n<=floor(exp T), define the nonnegative weighted error mass:

  M_eta(T) = sum_(n in endpointIndex(T)) eta_n/sqrt(n).

The pointwise error waveform bound is |errorWave(T,u)|<=2*M_eta(T). Its actual interval-integral energy satisfies, for T>=0,

  errorEnergy(T)=integral_(0..T) errorWave(T,u)^2 du <= 4*T*M_eta(T)^2.

The finite full signed source is squared ONLY AFTER summation. The real two-vector Young inequality then gives the symmetric complete energy returns

  pickupEnergy(T) <= 2*observedEnergy(T) + 2*errorEnergy(T)
  observedEnergy(T) <= 2*pickupEnergy(T) + 2*errorEnergy(T),

and hence the two bounds with explicit 8*T*M_eta(T)^2 allowance. The constants are mathematical allowances, not asserted optimal. This is SOURCE-SPECIFIC to the actual causal responses and their physical-time integral.

## Improvement on the prior pairwise decoder envelope

The former errorEnvelope(T) charged all original ordered off-diagonal pairs separately by the sum of absolute source Gram terms. Even a small number of corrupted original coefficients can create a large pairwise absolute uncertainty due to cross terms with the unbounded inventory. The new source first assembles the signed observation and the signed error wave, then squares and integrates. It charges the decoder error at most 4*T*M_eta(T)^2 in its OWN energy, without an exponentially growing number of pair charges. No signed original cross term is deleted; their interaction is paid by the 2* observed plus 2* error Young bound.

For a fixed positive C with M_eta(T)<=C on one fixed set G and an ErrorCertificate on EVERY original index at all nonnegative T in G, 8*C^2*T is globally subexponential in physical time. Under this actual mass premise, the source candidate proves:

  SubexponentialOn(observedEnergy,G) iff SubexponentialOn(pickupEnergy,G).

The subsequent conditional consumer uses the pre-existing riemannHypothesis_of_energy_good_scales on the SAME fixed AffineFrequent G. It needs only the observed cumulative signed waveform ENERGY at all positive rates; it no longer requires a separate all-positive-rate estimate of the old absolute ordered-pair decoder error envelope. The observed-energy premise remains RH-strength in general, and the bound on M_eta must be actually supplied. The theorem does NOT infer it from elliptic torsion cardinality, the Rank32 free Mordell-Weil rank, M23 Galois candidate coverage, a Reed-Solomon code, or a finite computational zero inventory.

A fixed bounded number of true source-coefficient errors with bounded inverse-square-root total can meet the bounded-mass premise; this observation is a mathematical example, NOT a claim that any proposed finite phase encoder satisfies the source-index certificates. No actual new Möbius cancellation, global RH proof or rank-32 proof is supplied.

## Finite numerical preflight, properly scoped

An independent 55-digit mpmath diagnostic was actually executed in the temporary conversation workspace with original integer Möbius coefficients and the literal causal response. It tested 7 horizons, five deliberately different decoder families per horizon (exact, zero, one-index corrupt, residue-class, random), indices through 52, and 31,245 assertions. The checks include original/observed/error wave splitting, nonnegative inverse-square-root response bound, exact closed-birth integral formulas, both energy directions, and the 4*T*M^2 and 8*T*M^2 inequalities. All passed. This is finite numerical evidence only, NOT a rigorous interval enclosure, native Lean parsing, fresh kernel check, or proof of a uniform asymptotic statement.

Local diagnostic script (not committed as a mathematics process runner): /mnt/data/phase_decoder_energy_finite_preflight.py; SHA-256 c0cbf47613c3322a9f8d2f058d32e3ec0df7a400dd6c78037de3a6cd3eeb065f.
Local diagnostic result: /mnt/data/phase_decoder_energy_preflight_result.json; SHA-256 d79cc726a8a18d2e899ee81bae9c9dffbdbbf70eddb7182569e2f01c624e9441.
At T approximately log(50), one wrong coefficient at n=1 has M_eta=1 and actual error energy approximately 5.8308337215, within the explicit 4*T*M_eta^2 allowance approximately 15.6480920217. The observed energy is not asserted to be smaller than the original energy.

## Exact acceptance state, controls and research boundary

Pinned environment read on main: leanprover/lean4:v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. New leaf source scan contains no authored theorem proof holes, research axioms or unsafe declarations; this lexical observation is not a transitive audit.

COMPILATION_NOT_RUN, EXPECTED_TYPES_NOT_RUN, FRESH_KERNEL_NOT_RUN, TRANSITIVE_AXIOM_AUDIT_NOT_RUN. There is no lean/lake/elan binary on the local execution PATH. No authorized remote verifier, scheduler, CI override, branch protection bypass or production agent was invoked. Do not promote into root GRWTSK.lean before acceptance.

Required hostile acceptance:
- source exact closed support n=1..floor(exp T) and physical u in [0,T], zero width when T=0;
- original birth n=1, squared prime n=4 with mu=0, all original signs, no change of arithmetic modulus, both mixed source/error terms;
- 0<=r_n(u)<=2/sqrt(n) for n>=1, with no inferred signed Gram positivity;
- actual error radii per original integer; no free eta=0 for an incorrect or missing decoded record;
- nonnegative mass and strict T>=0 for physical-time energy inequalities;
- same one fixed AffineFrequent G and all-positive-exponent observed-energy premise; bounded error mass C fixed before choosing rate;
- original energy integral and canonical root RiemannHypothesis, not a finite matrix or surrogate zeta;
- full dependent theorem elaboration, private and generated definitions, imported opaque proofs and axioms; reject sorryAx, new research axioms and unauthorized native trust.

No modification or deletion of any pre-existing theorem or file is included in this increment. Runtime execution/receipts and scheduling belong to grwtsk/noeaaeue, not mathematics. Next substantive arithmetic work remains proving a NONCIRCULAR every-positive-rate bound for an actual observed waveform whose decoder error mass is uniformly certified on a fixed adequately covering scale set.
