# CM-selected signed-wave return and winding no-go (source-bound)

Status: `SOURCE_PROOF_CANDIDATE`; Git publication and readback recorded separately; `COMPILATION_NOT_RUN`, `FRESH_KERNEL_NOT_RUN`, `EXPECTED_TYPES_NOT_RUN`, `TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. Human mathematical direction: grwtsk contributors; formalization assistance: OpenAI.

## Exact preexisting sources

- `grwtsk/math`, research branch `research/residue-circle-wave-hilbert-20261101-350ff25d`, pinned parent `ff2d03e34215324d9a46ed634530c324cce92225` (do not substitute concurrent `main`). Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
- Actual CM Thom/Betti source: `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, `OAI.AlgebraicGeometry.ComplexMultiplication.Reference.GeometricAlgebraicity.originalHodgeClass_nativeThomAlgebraic` and `OAI.AlgebraicGeometry.CycleClass.Geometric.Span`; no generic, independently assumed `cycleClass` equality.
- Imported local cycle-to-selected Hilbert: `CMGeometricCycleHilbert.lean` blob `fd00f0e140e49676f05b49ac6e752c23ef190c15`; `CMScaleResidueHilbertAttachment.lean` blob `b7902370c6bab3111a409851fc52ab7894d2f414`.
- Exact original signed arithmetic source `DyadicSignedResidueWaveform.lean` blob `07dfdae4a60b05f5da55cc20882411c85444fa82`; `ResidueCircleSignedPickupHilbertPort.lean` blob `1108ba0604ccce95828d160bc9016a73e9a3e317`; `ResidueCircleWaveHilbert.lean` blob `3a17b268dc195ba32653df3892780a4515559e30`.
- Original Euclidean angular-frequency half-wave symbol from OpenAI result 079 through `EuclideanCircleResidueWaveComparison.lean`, blob `698b45c6b8b3344f0da297208d37d4c08e965c76`. The OpenAI local-smoothing theorem remains Euclidean in dimensions ≥2, not a torus estimate.

## New source: one complete Hilbert space with an exact coherent signed readout

`CMSelectedSignedWaveReturn.lean` selects the constant square-modulus profile `scaleModulus stage=d*d`, for `d≠0`. For each finite original dyadic inventory `j`, original parity `r∈Fin 2`, and additive class `a∈ZMod(d*d)`, it maps the SAME source coefficient `classWave j d r.val a u` to Hilbert address `(2*j+r.val,a)` by a finite sum of `lp.single` vectors. This does not require unproved all-stage summability, since it is ONE finite packet in the genuinely complete `AllScaleHilbert` type. `classAddress_injective` and `actualSignedPacket_apply` are proposed proofs of exact recovery at the original address; all nonunits remain.

`finiteCoherentReadout` is the real part of the finite sum over precisely those original packet addresses. It is a bounded finite observation with conservative quantitative bound `|readout(x)|≤2*d*d*‖x‖` on any complete-space vector. `finiteCoherentReadout_actualSignedPacket` is exactly the original `completeWave j d u`; hence the original physical-time `pickupEnergy (dyadicTime j)` equals the integral of the **SQUARE OF THE FULL COHERENT SUM**, not the sum of classwise positive norms. The source `wholePickup_eq_completeWave` applies on the entire closed interval and retains original signed Möbius coefficients, births, parities 00/01/10/11, additive nonunit classes and their mixed terms.

In this EXACT SAME selected Hilbert space, `selectedCMCycles` is the actual CM rational algebraic-cycle image produced by the already published basis-dependent Betti coordinate insertion, under the explicit `[FiniteDimensional ℚ (OriginalBetti X p)]` premise. The P/Q projections give `x=Px+Qx` and the original observation splits into `ℓ(Px)+ℓ(Qx)`. Consequently the unchanged causal energy equals the integral of `ℓ(Px)^2+ℓ(Qx)^2+2ℓ(Px)ℓ(Qx)`; the signed cross term MUST NOT be dropped. The positive Hilbert energy remains Pythagorean separately. There is no assertion that a nonunit residue is a nonalgebraic Hodge class, or that the arithmetic packet already lies in the selected geometric span.

## New analytic obstruction: residue-only evolution loses winding

`PeriodicResidueWaveNoGo.lean` uses the EXACT previously selected circle phase `exp(-2πit|k|)` and genuine standard additive character of `ZMod q`. Every `q>0` aliases the two distinct integer modes `k=0` and `k=q` in initial q-point samples. At `t=1/(2q)` their original phases are exactly `1` and `-1`. Therefore not even an arbitrary non-linear map of q-point initial samples can recover *every* one-mode wave at that time: `no_residue_only_evolution_at_half_winding`. The winding must be retained in the Hilbert/alias data; a residue-only propagator cannot be treated as a lossless realization. This obstructs naive Euclidean-to-periodic wave transfer but does not prevent a correctly winding-aware transference theorem.

## Finite diagnostics and actual trust status

Local standalone `cm_signed_wave_alias_reference.py` produced 124,704 passing finite floating-point diagnostics across q=1..96, including the half-winding phase collision and the complete positive-versus-coherent signed mixed-energy ledgers. These are not Lean proof, a geometric CM theorem replay, a rigorous analytic limit, or arithmetic energy bounds. Static checks on both source leaves: balanced ASCII delimiters, no proof-hole keywords, no newly declared axiom or native_decide.

No Lean, Lake or Leanchecker toolchain is installed in the present container; no proof execution, remote native runner, CI, workflow, scheduler, merge or main-branch mutation is authorized or performed here. `grwtsk/math` retains exact pure proof candidates and pinned review; proof acceptance requires a separate clean exact-head Lean build, fresh-kernel, elaborated-type and transitive axiom audit.

## Remaining obligations

1. Resolve the local OpenAI Hodge wrapper's old revision and the current upstream comparator statement alignment by exact compilation and trust audit. Prove the geometric Betti finite-dimensionality instance and identify a genuinely relevant metric/polarization; the chosen coordinate ℓ² metric is basis-dependent.
2. Prove a nontrivial operator intertwiner between the literal CM cycle-cohomology sector and the actual arithmetic wave, or retain the exact `QWP`, `PWQ` defects. The common Hilbert carrier is NOT such an intertwiner.
3. A true Schwartz-to-periodic `L^p` local-smoothing theorem needs periodization, spatial cutoff, lattice sampling, correct `2π`, integer winding and a controlled q-dependent norm comparison; mere agreement of angular Fourier symbols along an axis is insufficient.
4. Any all-positive-rate original signed Möbius energy estimate/RH-facing conclusion is an independently unsupplied arithmetic theorem, not obtained from the Pythagorean Hilbert split.
