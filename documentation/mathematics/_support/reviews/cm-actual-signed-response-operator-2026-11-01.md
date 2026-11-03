# Actual CM-cycle projection versus the source-signed arithmetic response

**Source-only research candidate.** Mathematical direction: grwtsk contributors. Lean assistance: OpenAI. This review is mathematical argument and verification queue data, not a verified compilation, a global arithmetic propagator, or an all-positive-rate RH result.

## Immutable sources and scope

- Target: `grwtsk/math`, isolated branch `research/residue-circle-wave-hilbert-20261101-350ff25d`, exact base commit `c673c876120f925450044713e714c134a3d52880` (the source branch head inspected before this increment). Main evolves independently and is not modified.
- Existing source leaf `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/CMSelectedSignedWaveReturn.lean`, Git blob `bedee8072837b0a96eb49beea79a4fd04efa1fe9`, containing the literal `classWave j d r.val a u` signed source, finite `actualSignedPacket`, source-recovering readout, and actual selected `CM` algebraic-cycle images.
- Existing generic four-block leaf `GRWTSK/HarmonicAnalysisOnEuclideanSpaces/ResidueCircleWaveFourBlock.lean`, Git blob `aadebfd32f24e7ee6308b89d5d0561a6d7312f89`; selected cycle-to-Hilbert source `CMScaleResidueHilbertAttachment.lean`, Git blob `b7902370c6bab3111a409851fc52ab7894d2f414`.
- Original arithmetic producer `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/DyadicSignedResidueWaveform.lean`, blob `07dfdae4a60b05f5da55cc20882411c85444fa82`. The original source is the signed Möbius causal pickup with all birth events, both parity sectors, nonunit additive residues, and mixed quadratic products.
- Upstream geometric source `openai/math@4eaee87548250b2682affda7d05d947c05554bae`, `OAI.AlgebraicGeometry.ComplexMultiplication.Reference.GeometricAlgebraicity.originalHodgeClass_nativeThomAlgebraic`, and its actual rational cycle class construction. It does not supply an arithmetic propagator.
- Toolchain policy: `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. **No native verifier is executed here.**

## The actual selected Hilbert data

For nonzero integer modulus parameter `d`, let `q=d*d` and `H=AllScaleHilbert (squareProfile d)`. At inventory `j` and time `u` the original signed arithmetic packet is

\[
S_{j,u}=\sum_{r\in\{0,1\}}\sum_{a\in\mathbf Z/q\mathbf Z}
  \operatorname{classWave}(j,d,r,a,u)\,e_{(2j+r,a)}\in H.
\]

This finite sum is an element of the complete `ℓ²` Hilbert carrier. It is not an unproved summation of all dyadic packets. For a projective, smooth, integral, CM group scheme `X` and degree `p`, with explicitly supplied `[FiniteDimensional ℚ (OriginalBetti X p)]`, define `A` as the closed complex span of the **actual** rational algebraic-cycle image in that same `H`. Let `P` and `Q` be its orthogonal projections and complementary projection. The chosen Betti-basis placement is not a canonical Hodge metric.

The source-specific complex-linear readout

\[
L_j(x)=\sum_{r=0}^{1}\sum_{a\in\mathbf Z/q\mathbf Z}x(2j+r,a)
\]

is a finite sum of `lp.evalCLM` bounded coordinate evaluations. It obeys `L_j(S_{j,u})=(completeWave j d u:ℂ)` and the conservative bound `|L_j(x)|≤2q‖x‖`. The real part on the original real-valued packet is the existing `finiteCoherentReadout`, so all original Möbius signs remain.

## The constructed bounded arithmetic response and exact comparison

Define the literal finite-rank response operator

\[
T_{j,u}(x)=L_j(x)S_{j,u}.
\]

It is a bounded complex-linear operator since `L_j` is bounded and `S_{j,u}` is a vector in `H`, with `‖T_{j,u} x‖≤(2q)‖x‖‖S_{j,u}‖`. No arbitrary source coefficients, unrelated projected metric, or missing port are supplied.

For **any** bounded operator `W` on a complex Hilbert space and orthogonal complementary projections `P,Q`, the identities are

\[
W=PWP+PWQ+QWP+QWQ,
\qquad PW-WP=PWQ-QWP.
\]

The ranges of `PWQ` and `QWP` lie in `A` and `A^⊥` respectively, hence

\[
\|(PW-WP)x\|^2=\|PWQx\|^2+\|QWPx\|^2.
\]

This is a positive-Hilbert-metric identity. It forbids cancellation between the two commutator defects, but **does not** eliminate mixed terms in the original signed **scalar** pickup-energy readout.

For the **source-constructed** `T_{j,u}`, the two directions factor exactly:

\[
QT_{j,u}Px=L_j(Px)\,QS_{j,u},\qquad
PT_{j,u}Qx=L_j(Qx)\,PS_{j,u}.
\]

Thus each has a source-specific positive norm estimate, e.g.

\[
\|QT_{j,u}Px\|\le \|L_j\|\,\|Px\|\,\|QS_{j,u}\|,
\quad
\|PT_{j,u}Qx\|\le \|L_j\|\,\|Qx\|\,\|PS_{j,u}\|.
\]

The exact commutator-energy identity becomes

\[
\|(PT_{j,u}-T_{j,u}P)x\|^2=
 |L_j(Qx)|^2\,\|PS_{j,u}\|^2+
 |L_j(Px)|^2\,\|QS_{j,u}\|^2.
\]

Any nonzero factor pair produces the corresponding nonzero defect. The code carries those factors as hypotheses rather than fabricating their nonvanishing for an arbitrary CM variety or arithmetic time.

For an **actual rational CM Hodge class** `a`, OpenAI's original Thom-cycle witness and the existing concrete basis placement give `y=J(a)∈A`, so `Py=y`, `Qy=0`. The new theorem gives `PT_{j,u}Qy=0` on that **input**, but `QT_{j,u}Py=L_j(y)QS_{j,u}` is still retained and need not be zero. No hidden invariance hypothesis is used.

## Exact limited two-time packet return and its boundary

When the **original** signed coherent coefficient is nonzero, `completeWave j d u0 ≠ 0`, the bounded source-identified map

\[
T^{\mathrm{cond}}_{u_0\to u}=(L_j(S_{j,u_0}))^{-1}T_{j,u}
\]

satisfies `T^{cond}_{u0→u}(S_{j,u0})=S_{j,u}`. This is only a *chosen rank-one interpolation on a specified pair of source packets*. It is not claimed to agree with the arithmetic waveform's intrinsic time evolution on arbitrary states, satisfy semigroup/causality identities, or coincide with the Euclidean/periodic half-wave operator. A separate conditional lemma records that if `S_{j,u0}=0` but `S_{j,u}≠0`, no linear map can make that source-packet transition.

## Hostile controls, remaining gates, and verification disposition

- Orthogonality in the Hilbert norm must **not** be used to remove the signed cross term `2 ℓ(P S)ℓ(Q S)` in the *original* `pickupEnergy` identity. The exact source return remains in `CMSelectedSignedWaveReturn.originalPickupEnergy_selectedCM_mixedIntegral`.
- The finite arithmetic packet has parity/address labels `(2j+r,a)`. Those are bookkeeping labels, not the physical integer frequencies. The physical periodic half-wave must retain genuine winding `k`; `PeriodicResidueWaveNoGo` proves the no-residue-only obstruction. The constructed `T` is **not** that physical periodic propagator.
- `[FiniteDimensional ℚ (OriginalBetti X p)]` remains an explicit premise in the existing concrete cycle placement; no universal geometric finite-dimensionality source is invented.
- Actual numerical nonvanishing `L_j(J(a))≠0`, `QS_{j,u}≠0`, `PS_{j,u}≠0` for a particular CM variety and arithmetic time is **not established**. The branch proves exact conditional nonvanishing criteria and always-valid identities.
- No global-in-j source norm bound, no Schwartz-to-periodic `L^p` local-smoothing transference, no original all-positive-rate signed Möbius energy estimate, no RH inference, and no new authority to invoke any runner or scheduler.
- Independent exact-rational finite algebra reference fixtures checked 69,760 assertions in dimensions 2–5; one non-source toy span `span(1,2)`, source vector `(1,0)`, detector `x↦x₁+x₂` has both defects `QTP=(12/25,-6/25)` and `PTQ=(2/25,4/25)`. The fixture is **not** a claim of nonzero defects for the actual CM embedding, and is not Lean or a kernel check.
- New Lean files are source proof candidates. Their import closure, elaborated theorem types, `lake build --wfail`, fresh kernel replay, and transitive `#print axioms` require a separately authorized pinned verifier. Current facets `COMPILATION_NOT_RUN`, `FRESH_KERNEL_NOT_RUN`, `EXPECTED_TYPES_NOT_RUN`, `TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. Source publication/readback, if completed, is separate evidence.

## Pure proof next steps

1. Determine source-specific conditions for nonzero `L_j(J(a))`, `PS_{j,u}`, and `QS_{j,u}` from a named CM variety, chosen Betti basis and literal arithmetic inventory; distinguish the disjoint-stage cases where the selected embedding forces zero.
2. Build an honest operator sending the ORIGINAL arithmetic time evolution on a source-dense subspace, with exact domain and boundedness. Do not promote the chosen rank-one pair interpolator to that operator.
3. Build a winding-faithful periodic-Fourier-to-selected-Hilbert adapter and prove it intertwines actual half-wave propagators under controlled `ℓ²`/Sobolev norms; separately establish any Euclidean `L^p` transference.
4. Queue clean exact-commit Lean, kernel and axiom auditing via the existing verification governance; issue records are passive and must not dispatch a runner.
