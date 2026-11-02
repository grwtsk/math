# Residue-circle wave/Hodge Hilbert transport: source-bound advancement

**Scope:** Additive Lean proof candidates on existing `grwtsk/math` research branch; mathematical and bibliographic review only. **NOT_RUN:** compilation, trust-zero elaboration, fresh kernel replay, transitive axiom/unsafe audit and exact expected-type checking. Do not promote to the public root or claim theorem acceptance without source-bound evidence.

## Source identities inspected

- Target research branch `research/residue-circle-wave-hilbert-20261101-350ff25d` was based on `grwtsk/math/main` `350ff25d60f156b6d0617513eb253343afacbaf2`, with the earlier four-file source head `b545c6453f92306e01a4db9888147de90d33fc44`. Concurrent `main` was observed at `ebe3bc47a4d208cb3dd242d2143380be54a2f2b1` during source inspection; do not conflate those snapshots or overwrite concurrent work.
- Toolchain on the branch: `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, manifest Git blob `c8044c56be77c58e6f41cca024b25237c59e8c79`.
- Actual arithmetic source: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedResidueWaveform.lean`, Git blob `07dfdae4a60b05f5da55cc20882411c85444fa82`. Its preexisting `classWave`, `completeWave`, `wholePickup_eq_completeWave`, `completeResidueEnergy_eq_pickupEnergy` and four-sector identity fix original Möbius signs, causal birth windows, both parity channels, every residue (including nonunits), and ordered interactions.
- Previously drafted local Hilbert sources: `ResidueCircleWaveHilbert.lean` blob `3a17b268dc195ba32653df3892780a4515559e30` and `ResidueCircleWaveHilbertFormalization.lean` blob `b537083adbf681bde7ca7aa2abcf0c8643d1d254` on the research branch. These provide the actual ℓ² carrier, closed cycle-image span, projections, wave leakage and conditional all-order multiplier.
- Upstream OpenAI scope: `openai/math` at `4eaee87548250b2682affda7d05d947c05554bae`. The CM-Hodge comparator's `Hdg^p(X;ℚ) ≤ algebraicCycleClassSpan X p` applies to smooth integral projective complex group schemes with geometric CM data. The local-smoothing theorem applies to Euclidean half-waves on `ℝ^n × [1,2]` with Schwartz input, n≥2, p≥2 and the stated Sobolev loss. Neither theorem is silently coerced into a circle-residue Hilbert realization.

## New source leaf A: four operator blocks

`GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleWaveFourBlock.lean`.

For the positive Hilbert orthogonal projections `P` onto the **actual closed span of selected cycle images** and `Q=I-P`, a bounded wave at stage j admits a complete decomposition

`W_j = P W_j P + P W_j Q + Q W_j P + Q W_j Q`.

The source candidate contains exact algebraic and residual output reconstructions, total four-block reconstruction and positive output energy, retaining within-output interference. It includes a norm bound on the residual-to-algebraic leakage `P W_j Q` and retains the existing algebraic-to-residual `Q W_j P` unchanged. Neither off-diagonal block is set to zero absent source-proved commutation, and no uniform-in-j bound is asserted.

## New source leaf B: original signed pickup → finite Hilbert packet

`GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleSignedPickupHilbertPort.lean`.

For a positive additive parameter d and dyadic inventory j, let

- `V_d = EuclideanSpace ℝ (Fin 2 × ZMod (d*d))` with its positive Hilbert norm;
- `v_j(u) (r,a) = classWave j d r.val a u`, retaining the original `moebiusReal n * pickupResponse n u`;
- `ℓ(v) = Σ_{r:Fin 2} Σ_{a:ZMod(d*d)} v(r,a)`.

The source candidate connects `ℓ(v_j(u))` exactly to `completeWave j d u`, then to the original fixed inventory and to `wholePickup u` throughout `0≤u≤dyadicTime j`. It identifies `‖v_j(u)‖²` with the *diagonal* class energy and `ℓ(v_j(u))²` with the full ordered double sum. It transports the existing real integral exactly:

`pickupEnergy(dyadicTime j) = ∫ u in 0..dyadicTime j, ℓ(v_j(u))²`.

For any selected closed algebraic cycle span, the positive Hilbert decomposition is `v=Pv+Qv`, but the **observed scalar** energy is

`ℓ(v)² = ℓ(Pv)² + ℓ(Qv)² + 2ℓ(Pv)ℓ(Qv)`.

The final theorem in the leaf integrates this exact identity for the literal source pickup energy, so it neither assumes independent class cancellation nor loses the signed mixed term. `liftAtStage` places one finite packet in the genuine complete Hilbert sum `ℓ²(ℕ,V_d)` with exact retrieval. This does **not** assert whole-family `j↦v_j` ℓ² membership.

## New source leaf C: all-scale, non-finite regularizer

`GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleQuadraticScaleTaper.lean`.

Define `M(j,r)=2^(-j²)`, nonzero at every scale. The bounded-multiplier hypothesis of the existing all-order leaf is supplied *constructively*: for every m,j≥0,

`m*j ≤ m²+j²` and hence `2^(m*j) |M(j,r)| ≤ 2^(m²)`.

Thus, for any genuine all-scale ℓ² input f, `M f` belongs to every dyadic weighted ℓ² domain. The exact returned pair is `M f` and `f-M f`, with no zero-tail assumption. This is genuine sequence-weight regularization but **not** Euclidean local smoothing, geometric C∞, an isometric operator, an arithmetic energy estimate, or a norm-uniformly invertible map.

## Finite diagnostic and hostile controls

A finite Python reference over `j=0..8`, `d∈{1,2,3,4,5,7,11}`, and sampled interior and birth times checked **15,316 numerical assertions** for original Möbius causal coefficients: the complete class sum, ordered-pair square and arbitrary one-coordinate Hilbert projection recombine to the original scalar square. **3,591** evaluated packets had nonzero ordered off-diagonal contribution. This only checks finite computations, not arbitrary real-time integrals or Lean proofs. In particular, the positive class-packet Hilbert norm is generally unequal to the scalar coherent pickup energy.

Do not (i) drop one parity, a nonunit, a zero-coefficient address or terminal birth; (ii) replace the signed source by classwise absolute values; (iii) infer `ℓ(Pv)⊥ℓ(Qv)` from Hilbert orthogonality; (iv) identify the residual complement with a counterexample to the CM Hodge theorem; (v) identify weighted dyadic regularity with geometric smoothness or with OpenAI's Euclidean theorem; (vi) treat the generic wave family as the actual PDE half-wave without constructing it; or (vii) infer all-positive-rate pickup energy control/RH from these exact representations.

## Next proof obligations and acceptance

1. Build a *concrete*, degree- and coefficient-correct CM cycle-class → analytic Hilbert fiber map under OpenAI's exact geometric hypotheses, with positive metric and pairing compatibility. Only then instantiate the generic `CyclesSpanHodge` using the external theorem at the correct source revision.
2. Construct Euclidean-to-periodic/cyclic wave comparison with explicit Fourier frequency normalization, actual Sobolev orders, observation time window, domain, scale loss, and remainder. Prove continuity/adjoint/semigroup or bundle seams where invoked, keeping `P W Q` and `Q W P` defects measurable and quantitatively controlled.
3. Derive an all-scale summable actual arithmetic packet or a bounded source-identified observation map; finite stage placement in ℓ² cannot fill this gap.
4. Prove the remaining one-sided all-positive-rate signed arithmetic estimate for the actual source before applying any existing conditional RH consumer. No estimate is introduced as an axiom or a freely chosen residual.
5. From a clean immutable revision, separately perform `lake build --wfail` for every new module, trust-zero Lean elaboration, exact type checks, fresh kernel replay, and complete transitive axiom/unsafe/native audit. Bind each acceptance receipt to the actual source tree and toolchain. No native execution or runner is dispatched by this mathematical source review.